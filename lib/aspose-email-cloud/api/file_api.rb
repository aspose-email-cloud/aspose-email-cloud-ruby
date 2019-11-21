#part: api/email_api.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_api.rb">
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


require 'uri'

module AsposeEmailCloud
  # Aspose.Email Cloud API
  class FileApi
    attr_accessor :api_client

    # Initializes a new instance of the FileApi class.
    # @param [String] app_key Key to access the server.
    # @param [String] app_sid ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    def initialize(app_key = nil, app_sid = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v3.0', debug = false)
      @api_client = ApiClient.new(app_key, app_sid, base_url, api_version, debug)
    end

    # Copy file
    # @param [copy_fileRequest] request Request object.
    # @return [nil]
    def copy_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Delete file
    # @param [delete_fileRequest] request Request object.
    # @return [nil]
    def delete_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Download file
    # @param [download_fileRequest] request Request object.
    # @return [File]
    def download_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Move file
    # @param [move_fileRequest] request Request object.
    # @return [nil]
    def move_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Upload file
    # @param [upload_fileRequest] request Request object.
    # @return [FilesUploadResult]
    def upload_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'FilesUploadResult')
    end

    private

    def make_request(http_request, method, return_type)
      call_api(http_request, method, return_type)
    rescue ApiError => e
      if e.code.equal? 401
        request_token
        return call_api(http_request, method, return_type)
      end
      raise

    end

    def call_api(http_request, method, return_type)
      response = @api_client.call_api(method,
                                      http_request.resource_path,
                                      header_params: http_request.header_params,
                                      query_params: http_request.query_params,
                                      form_params: http_request.form_params,
                                      body: http_request.body,
                                      auth_names: http_request.auth_names,
                                      return_type: return_type)
      response[0]
    end

    def request_token
      config = @api_client.config
      request_url = '/connect/token'
      form_params =
        {
          'grant_type': 'client_credentials',
          'client_id': config.api_key[:app_sid],
          'client_secret': config.api_key[:api_key]
        }

      header_params =
        {
          'Accept' => 'application/json',
          'Content-Type' =>'application/x-www-form-urlencoded'
        }

      base_path = @api_client.config.base_path
      @api_client.config.base_path = ''

      data = @api_client.call_api(:POST, request_url,
                                  header_params: header_params,
                                  form_params: form_params,
                                  return_type: 'Object')
      access_token = data[0]['access_token'.to_sym]

      @api_client.config.base_path = base_path
      @api_client.config.access_token = access_token
    end
  end
end

#part: models/requests/copy_file_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="copy_file_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for copy_file operation.
  class copy_file_request_data < EmailRequest

    # Copy file
    # @param [String] src_path Source file path e.g. &#39;/folder/file.ext&#39;
    # @param [String] dest_path Destination file path
    # @param [String] src_storage_name Source storage name
    # @param [String] dest_storage_name Destination storage name
    # @param [String] version_id File version ID to copy
    def initialize(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil, version_id = nil)
      @src_path = src_path
      @dest_path = dest_path
      @src_storage_name = src_storage_name
      @dest_storage_name = dest_storage_name
      @version_id = version_id
    end

    def to_http_info(api_client)
      # verify the required parameter 'src_path' is set
      if api_client.config.client_side_validation && @src_path.nil?
        raise ArgumentError, "Missing the required parameter 'src_path' when calling FileApi.copy_file"
      end

      # verify the required parameter 'dest_path' is set
      if api_client.config.client_side_validation && @dest_path.nil?
        raise ArgumentError, "Missing the required parameter 'dest_path' when calling FileApi.copy_file"
      end

      # resource path
      local_var_path = '/email/storage/file/copy/{srcPath}'.sub('{' + 'srcPath' + '}', @src_path.to_s)

      # query parameters
      query_params = {}
      query_params[:destPath] = @dest_path
      query_params[:srcStorageName] = @src_storage_name unless @src_storage_name.nil?
      query_params[:destStorageName] = @dest_storage_name unless @dest_storage_name.nil?
      query_params[:versionId] = @version_id unless @version_id.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/delete_file_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="delete_file_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for delete_file operation.
  class delete_file_request_data < EmailRequest

    # Delete file
    # @param [String] path File path e.g. &#39;/folder/file.ext&#39;
    # @param [String] storage_name Storage name
    # @param [String] version_id File version ID to delete
    def initialize(path, storage_name = nil, version_id = nil)
      @path = path
      @storage_name = storage_name
      @version_id = version_id
    end

    def to_http_info(api_client)
      # verify the required parameter 'path' is set
      if api_client.config.client_side_validation && @path.nil?
        raise ArgumentError, "Missing the required parameter 'path' when calling FileApi.delete_file"
      end

      # resource path
      local_var_path = '/email/storage/file/{path}'.sub('{' + 'path' + '}', @path.to_s)

      # query parameters
      query_params = {}
      query_params[:storageName] = @storage_name unless @storage_name.nil?
      query_params[:versionId] = @version_id unless @version_id.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/download_file_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="download_file_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for download_file operation.
  class download_file_request_data < EmailRequest

    # Download file
    # @param [String] path File path e.g. &#39;/folder/file.ext&#39;
    # @param [String] storage_name Storage name
    # @param [String] version_id File version ID to download
    def initialize(path, storage_name = nil, version_id = nil)
      @path = path
      @storage_name = storage_name
      @version_id = version_id
    end

    def to_http_info(api_client)
      # verify the required parameter 'path' is set
      if api_client.config.client_side_validation && @path.nil?
        raise ArgumentError, "Missing the required parameter 'path' when calling FileApi.download_file"
      end

      # resource path
      local_var_path = '/email/storage/file/{path}'.sub('{' + 'path' + '}', @path.to_s)

      # query parameters
      query_params = {}
      query_params[:storageName] = @storage_name unless @storage_name.nil?
      query_params[:versionId] = @version_id unless @version_id.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/move_file_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="move_file_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for move_file operation.
  class move_file_request_data < EmailRequest

    # Move file
    # @param [String] src_path Source file path e.g. &#39;/src.ext&#39;
    # @param [String] dest_path Destination file path e.g. &#39;/dest.ext&#39;
    # @param [String] src_storage_name Source storage name
    # @param [String] dest_storage_name Destination storage name
    # @param [String] version_id File version ID to move
    def initialize(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil, version_id = nil)
      @src_path = src_path
      @dest_path = dest_path
      @src_storage_name = src_storage_name
      @dest_storage_name = dest_storage_name
      @version_id = version_id
    end

    def to_http_info(api_client)
      # verify the required parameter 'src_path' is set
      if api_client.config.client_side_validation && @src_path.nil?
        raise ArgumentError, "Missing the required parameter 'src_path' when calling FileApi.move_file"
      end

      # verify the required parameter 'dest_path' is set
      if api_client.config.client_side_validation && @dest_path.nil?
        raise ArgumentError, "Missing the required parameter 'dest_path' when calling FileApi.move_file"
      end

      # resource path
      local_var_path = '/email/storage/file/move/{srcPath}'.sub('{' + 'srcPath' + '}', @src_path.to_s)

      # query parameters
      query_params = {}
      query_params[:destPath] = @dest_path
      query_params[:srcStorageName] = @src_storage_name unless @src_storage_name.nil?
      query_params[:destStorageName] = @dest_storage_name unless @dest_storage_name.nil?
      query_params[:versionId] = @version_id unless @version_id.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/upload_file_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="upload_file_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for upload_file operation.
  class upload_file_request_data < EmailRequest

    # Upload file
    # @param [String] path Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             
    # @param [File] file File to upload
    # @param [String] storage_name Storage name
    def initialize(path, file, storage_name = nil)
      @path = path
      @file = file
      @storage_name = storage_name
    end

    def to_http_info(api_client)
      # verify the required parameter 'path' is set
      if api_client.config.client_side_validation && @path.nil?
        raise ArgumentError, "Missing the required parameter 'path' when calling FileApi.upload_file"
      end

      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && @file.nil?
        raise ArgumentError, "Missing the required parameter 'file' when calling FileApi.upload_file"
      end

      # resource path
      local_var_path = '/email/storage/file/{path}'.sub('{' + 'path' + '}', @path.to_s)

      # query parameters
      query_params = {}
      query_params[:storageName] = @storage_name unless @storage_name.nil?

      # form parameters
      form_params = {}
      form_params['File'] = @file

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['multipart/form-data'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end

#part: models/requests/http_request.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="http_request.rb">
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


module AsposeEmailCloud

  # Http request data.
  class http_request

    # Initializes a new instance.
    # @param [String] resource_path Path to method endpoint.
    # @param [Hash] header_params Header parameters to be placed in the request header.
    # @param [Hash] query_params Query parameters in the url.
    # @param [Hash] form_params Request post form parameters, for `application/x-www-form-urlencoded`, `multipart/form-data`.
    # @param [Object] body Request body.
    # @param [Array] auth_names Auth Settings names for the request.
    def initialize(resource_path, header_params, query_params, form_params, body, auth_names)
      @resource_path = resource_path
      @query_params = query_params
      @header_params = header_params
      @form_params = form_params
      @body = body
      @auth_names = auth_names
    end

    attr_reader :resource_path, :header_params, :query_params, :form_params, :body, :auth_names
  end
end
#part: models/requests/email_request.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_request.rb">
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


module AsposeEmailCloud

  # Base class for requests with basic operations
  class EmailRequest
    def to_http_info(config); end

    protected

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts)
      return nil if accepts.nil? || accepts.empty?

      # use JSON when present, otherwise use all of the provided
      json_accept = accepts.find { |s| json_mime?(s) }
      json_accept || accepts.join(',')
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types)
      # use application/json by default
      return 'application/json' if content_types.nil? || content_types.empty?

      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      json_content_type || content_types.first
    end

    private

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
  end
end


