#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="api_client.rb">
#    Copyright (c) 2018-2019 Aspose Pty Ltd. All rights reserved.
#  </copyright>
#  <summary>
#    Permission is hereby granted, free of charge, to any person obtaining a
#   copy  of this software and associated documentation files (the "Software"),
#   to deal  in the Software without restriction, including without limitation
#   the rights  to use, copy, modify, merge, publish, distribute, sublicense,
#   and/or sell  copies of the Software, and to permit persons to whom the
#   Software is  furnished to do so, subject to the following conditions:
#
#   The above copyright notice and this permission notice shall be included in
#   all  copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#   FROM,  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#   DEALINGS IN THE SOFTWARE.
#  </summary>
#  ----------------------------------------------------------------------------

require 'date'
require 'json'
require 'logger'
require 'tempfile'
require 'faraday'
require 'mimemagic'
require 'uri'

module AsposeEmailCloud
  # Generic API client
  # Swagger generic API client. This client handles the client-
  # server communication, and is invariant across implementations.
  class ApiClient
    # The Configuration object holding settings to be used in the API client.
    attr_accessor :config

    # Defines the headers to be used in HTTP requests of all API calls by default.
    #
    # @return [Hash]
    attr_accessor :default_headers

    # Initializes the ApiClient
    # @param [String] app_key Key to access the server.
    # @param [String] app_sid ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    def initialize(app_key = nil, app_sid = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v3.0', debug = false)
      @config = Configuration.new(app_key, app_sid, base_url, api_version, debug)
      @default_headers = {
        'x-aspose-client' => 'ruby sdk',
        'x-aspose-version' => '19.7'
      }
    end

    # Call an API with given options.
    #
    # @return [Array<(Object, Fixnum, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def call_api(http_method, path, opts = {})
      response = build_request(http_method, path, opts)
      download_file response if opts[:return_type] == 'File'

      if @config.debugging
        @config.logger.debug "'HTTP' response body '~BEGIN~'\n #{response.body}\n'~END~'\n"
      end

      unless response.success?
        if response.status.zero?
          # Errors from libcurl will be made visible here
          raise ApiError.new(response.return_message, 0)
        else
          begin
            error = convert_to_type(JSON.parse(response.body, symbolize_names: true)[:error], "Error")
          ensure
            raise ApiError.new("#{response.status} Error connecting to the API #{path}; Message: #{error}",
                                response.status, error)
          end
        end
      end

      data = (deserialize(response, opts[:return_type]) if opts[:return_type])
      [data, response.status, response.headers]
    end

    # Builds the HTTP request
    #
    # @param [String] http_method HTTP method/verb (e.g. POST)
    # @param [String] path URL path (e.g. /account/new)
    # @option opts [Hash] :header_params Header parameters
    # @option opts [Hash] :query_params Query parameters
    # @option opts [Hash] :form_params Query parameters
    # @option opts [Object] :body HTTP body (JSON/XML)
    # @option opts [String] :host Should not be used
    # @return [Faraday::Response] A Faraday Response
    def build_request(http_method, path, opts = {})
      url = build_request_url(path, opts[:host])
      http_method = http_method.to_sym.downcase

      header_params = @default_headers.merge(opts[:header_params] || {})
      query_params = opts[:query_params] || {}
      form_params = opts[:form_params] || {}
      body = opts[:body] if opts[:body] || nil?

      update_params_for_auth! header_params, query_params, opts[:auth_names]

      req_opts = {
          :method => http_method,
          :headers => header_params,
          :params => query_params,
          :body => body
      }

      if [:post, :patch, :put, :delete].include?(http_method)
        req_body = build_request_body(header_params, form_params, opts[:body])
        req_opts.update :body => req_body
        if @config.debugging
          @config.logger.debug "HTTP request body param ~BEGIN~\n#{req_body}\n~END~\n"
        end
      elsif http_method == :get && body.nil? && !form_params.any? && header_params['Content-Type'] == 'multipart/form-data'
        req_opts[:headers].delete('Content-Type')
      end

      conn = Faraday.new url, { :params => query_params, :headers => header_params } do |f|
        f.request :multipart
        f.request :url_encoded
        f.adapter Faraday.default_adapter
      end

      case http_method
      when :post
        return conn.post url, req_opts[:body]
      when :put
        return conn.put url, req_opts[:body]
      when :get
        return conn.get url, req_opts[:body]
      else
        return conn.delete url do |c|
          c.body = req_opts[:body]
        end
      end
    end

    # Check if the given MIME is a JSON MIME.
    # JSON MIME examples:
    #   application/json
    #   application/json; charset=UTF8
    #   APPLICATION/JSON
    #   */*
    # @param [String] mime MIME
    # @return [Boolean] True if the MIME is application/json
    def json_mime?(mime)
      (mime == '*/*') || !(mime =~ %r{Application/.*json(?!p)(;.*)?}i).nil?
    end

    # Deserialize the response to the given return type.
    #
    # @param [Response] response HTTP response
    # @param [String] return_type some examples: "User", "Array[User]", "Hash[String,Integer]"
    def deserialize(response, return_type)
      body = response.body

      # handle file downloading - return the File instance processed in request callbacks
      # note that response body is empty when the file is written in chunks in request on_body callback
      return @tempfile if return_type == 'File'

      return nil if body.nil? || body.empty?

      # return response body directly for String return type
      return body if return_type == 'String'

      # ensuring a default content type
      content_type = response.headers['Content-Type'] || 'application/json'

      raise "Content-Type is not supported: #{content_type}" unless json_mime?(content_type)

      begin
        data = JSON.parse("[#{body}]", symbolize_names: true)[0]
      rescue JSON::ParserError => e
        if %w[String Date DateTime].include?(return_type)
          data = body
        else
          raise e
        end
      end

      convert_to_type data, return_type
    end

    # Convert data to the given return type.
    # @param [Object] data Data to be converted
    # @param [String] return_type Return type
    # @return [Mixed] Data in a particular type
    def convert_to_type(data, return_type)
      return nil if data.nil?

      case return_type
      when 'String'
        data.to_s
      when 'Integer'
        data.to_i
      when 'Float'
        data.to_f
      when 'BOOLEAN'
        data == true
      when 'DateTime'
        # parse date time (expecting ISO 8601 format)
        DateTime.parse data
      when 'Date'
        # parse date time (expecting ISO 8601 format)
        Date.parse data
      when 'Object'
        # generic object (usually a Hash), return directly
        data
      when /\AArray<(.+)>\z/
        # e.g. Array<Pet>
        sub_type = Regexp.last_match(1)
        data.map { |item| convert_to_type(item, sub_type) }
      when /\AHash\<String, (.+)\>\z/
        # e.g. Hash<String, Integer>
        sub_type = Regexp.last_match(1)
        {}.tap do |hash|
          data.each { |k, v| hash[k] = convert_to_type(v, sub_type) }
        end
      else
        # models, e.g. Pet
        AsposeEmailCloud.const_get(return_type).new.tap do |model|
          model.build_from_hash data
        end
      end
    end

    # Save response body into a file in (the defined) temporary folder, using the filename
    # from the "Content-Disposition" header if provided, otherwise a random filename.
    # The response body is written to the file in chunks in order to handle files which
    # size is larger than maximum Ruby String or even larger than the maximum memory a Ruby
    # process can use.
    #
    # @see Configuration#temp_folder_path
    def download_file(response)
      tempfile = nil
      encoding = nil
      content_disposition = response.headers['Content-Disposition']
      if content_disposition and content_disposition =~ /filename=/i
        filename = content_disposition[/filename=['"]?([^'"\s]+)['"]?/, 1]
        prefix = sanitize_filename(filename)
      else
        prefix = 'download-'
      end
      prefix += '-' unless prefix.end_with?('-')
      encoding = response.body.encoding
      tempfile = Tempfile.open(prefix, @config.temp_folder_path, encoding: encoding)
      @tempfile = tempfile
      tempfile.write(response.body)
      response.on_complete do |resp|
        tempfile.close
        @config.logger.info "Temp file written to #{tempfile.path}, please copy the file to a proper folder "\
                            "with e.g. `FileUtils.cp(tempfile.path, '/new/file/path')` otherwise the temp file "\
                            "will be deleted automatically with GC. It's also recommended to delete the temp file "\
                            "explicitly with `tempfile.delete`"
      end
    end

    # Sanitize filename by removing path.
    # e.g. ../../sun.gif becomes sun.gif
    #
    # @param [String] filename the filename to be sanitized
    # @return [String] the sanitized filename
    def sanitize_filename(filename)
      filename.gsub(%r{.*[/\\]}, '')
    end

    def build_request_url(path, host = nil)
      # Add leading and trailing slashes to path
      path = "/#{path}".gsub(%r{/+}, '/')
      URI.encode((host || @config.base_url) + path)
    end

    # Builds the HTTP request body
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] form_params Query parameters
    # @param [Object] body HTTP body (JSON/XML)
    # @return [String] HTTP body data in the form of string
    def build_request_body(header_params, form_params, body)
      # http form
      if (header_params['Content-Type'] == 'application/x-www-form-urlencoded' ||
         header_params['Content-Type'] == 'multipart/form-data') && form_params.any?
        data = {}
        form_params.each do |key, value|
          case value
          when ::File
            data[key] = Faraday::UploadIO.new(value.path, MimeMagic.by_magic(value).to_s, key)
          when ::Tempfile
            data[key] = Faraday::UploadIO.new(value.path, key)
          when ::Array, nil
            data[key] = value
          else
            data[key] = value.to_s
          end
        end
      elsif body
        data = body.is_a?(String) ? body : body.to_json
      else
        data = nil
      end
      data
    end

    # Update hearder and query params based on authentication settings.
    #
    # @param [Hash] header_params Header parameters
    # @param [Hash] query_params Query parameters
    # @param [String] auth_names Authentication scheme name
    def update_params_for_auth!(header_params, query_params, auth_names)
      Array(auth_names).each do |auth_name|
        auth_setting = @config.auth_settings[auth_name.to_sym]
        next unless auth_setting

        case auth_setting[:in]
        when 'header'
          header_params[auth_setting[:key]] = auth_setting[:value]
        when 'query'
          query_params[auth_setting[:key]] = auth_setting[:value]
        else
          raise ArgumentError, 'Authentication token must be in `query` of `header`'
        end
      end
    end

    # Convert object (array, hash, object, etc) to JSON string.
    # @param [Object] model object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_http_body(model)
      return model if model.nil? || model.is_a?(String)

      local_body = nil
      local_body = if model.is_a?(Array)
                     model.map { |m| object_to_hash(m) }
                   else
                     object_to_hash(model)
                   end
      local_body.to_json
    end

    # Convert object(non-array) to hash.
    # @param [Object] obj object to be converted into JSON string
    # @return [String] JSON string representation of the object
    def object_to_hash(obj)
      if obj.respond_to?(:to_hash)
        obj.to_hash
      else
        obj
      end
    end

    # Build parameter value according to the given collection format.
    # @param [String] collection_format one of :csv, :ssv, :tsv, :pipes and :multi
    def build_collection_param(param, collection_format)
      case collection_format
      when :csv
        param.join(',')
      when :ssv
        param.join(' ')
      when :tsv
        param.join("\t")
      when :pipes
        param.join('|')
      when :multi
        # return the array directly as typhoeus will handle it as expected
        param
      else
        raise "unknown collection format: #{collection_format.inspect}"
      end
    end
  end
end
