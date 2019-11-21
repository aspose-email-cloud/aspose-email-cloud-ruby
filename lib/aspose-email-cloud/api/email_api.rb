
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
  class EmailApi
    attr_accessor :api_client

    # Initializes a new instance of the EmailApi class.
    # @param [String] app_key Key to access the server.
    # @param [String] app_sid ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    def initialize(app_key = nil, app_sid = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v3.0', debug = false)
      @api_client = ApiClient.new(app_key, app_sid, base_url, api_version, debug)
    end

    # Adds an attachment to Email document
    # @param [add_email_attachmentRequest] request Request object.
    # @return [EmailDocumentResponse]
    def add_email_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'EmailDocumentResponse')
    end

    # Create an email document
    # @param [create_emailRequest] request Request object.
    # @return [EmailDocumentResponse]
    def create_email(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'EmailDocumentResponse')
    end

    # Get email document
    # @param [get_emailRequest] request Request object.
    # @return [EmailDocument]
    def get_email(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailDocument')
    end

    # Get email attachment by name
    # @param [get_email_attachmentRequest] request Request object.
    # @return [File]
    def get_email_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Get an email document property by its name
    # @param [get_email_propertyRequest] request Request object.
    # @return [EmailPropertyResponse]
    def get_email_property(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailPropertyResponse')
    end

    # Set email document property value
    # @param [set_email_propertyRequest] request Request object.
    # @return [EmailPropertyResponse]
    def set_email_property(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'EmailPropertyResponse')
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

