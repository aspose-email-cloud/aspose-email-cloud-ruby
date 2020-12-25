#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_api.rb">
#    Copyright (c) 2018-2020 Aspose Pty Ltd. All rights reserved.
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
  # AiNameApi operations.
  class AiNameApi
    attr_reader :api_invoker

    # Initializes a new instance of the AiNameApi class.
    # @param [String] client_secret Key to access the server.
    # @param [String] client_id ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    # def initialize(client_secret = nil, client_id = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v4.0', debug = false)
    #   @api_client = ApiClient.new(client_secret, client_id, base_url, api_version, debug)
    # end

    # Initializes a new instance of the AiNameApi class.
    # @param [ApiInvoker] api_invoker
    def initialize(api_invoker)
      @api_invoker = api_invoker
    end

    # The call proposes k most probable names for given starting characters.             
    # @param [AiNameCompleteRequest] request Request object.
    # @return [AiNameWeightedVariants]
    def complete(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'AiNameWeightedVariants')
    end

    # Expands a person's name into a list of possible alternatives using options for expanding instructions.             
    # @param [AiNameExpandRequest] request Request object.
    # @return [AiNameWeightedVariants]
    def expand(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'AiNameWeightedVariants')
    end

    # Expands a person's parsed name into a list of possible alternatives using options for expanding instructions.             
    # @param [AiNameParsedRequest] request Parsed name with options.
    # @return [AiNameWeightedVariants]
    def expand_parsed(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling AiNameApi.expand_parsed"
      end

      local_var_path = '/email/AiName/expand-parsed'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, 'AiNameWeightedVariants')
    end

    # Formats a person's name in correct case and name order using options for formatting instructions.             
    # @param [AiNameFormatRequest] request Request object.
    # @return [AiNameFormatted]
    def format(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'AiNameFormatted')
    end

    # Formats a person's parsed name in correct case and name order using options for formatting instructions.             
    # @param [AiNameParsedRequest] request Parsed name with options.
    # @return [AiNameFormatted]
    def format_parsed(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling AiNameApi.format_parsed"
      end

      local_var_path = '/email/AiName/format-parsed'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, 'AiNameFormatted')
    end

    # Detect person's gender from name string.             
    # @param [AiNameGenderizeRequest] request Request object.
    # @return [AiNameGenderHypothesisList]
    def genderize(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'AiNameGenderHypothesisList')
    end

    # Detect person's gender from parsed name.             
    # @param [AiNameParsedRequest] request Gender detection request data.
    # @return [AiNameGenderHypothesisList]
    def genderize_parsed(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling AiNameApi.genderize_parsed"
      end

      local_var_path = '/email/AiName/genderize-parsed'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, 'AiNameGenderHypothesisList')
    end

    # Compare people's names. Uses options for comparing instructions.             
    # @param [AiNameMatchRequest] request Request object.
    # @return [AiNameMatchResult]
    def match(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'AiNameMatchResult')
    end

    # Compare people's parsed names and attributes. Uses options for comparing instructions.             
    # @param [AiNameMatchParsedRequest] request Parsed names to match.
    # @return [AiNameMatchResult]
    def match_parsed(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling AiNameApi.match_parsed"
      end

      local_var_path = '/email/AiName/match-parsed'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, 'AiNameMatchResult')
    end

    # Parse name to components.             
    # @param [AiNameParseRequest] request Request object.
    # @return [AiNameComponentList]
    def parse(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'AiNameComponentList')
    end

    # Parse person's name out of an email address.             
    # @param [AiNameParseEmailAddressRequest] request Request object.
    # @return [AiNameExtractedList]
    def parse_email_address(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'AiNameExtractedList')
    end
  end
end



