
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_contact_request_data.rb">
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
  # Request model for create_contact operation.
  class CreateContactRequestData < EmailRequest

    # Create contact document             
    # @param [String] format Contact document format
    # @param [String] name Contact document file name
    # @param [HierarchicalObjectRequest] request Create contact request
    def initialize(format, name, request)
      @format = format
      @name = name
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'format' is set
      if api_client.config.client_side_validation && @format.nil?
        raise ArgumentError, "Missing the required parameter 'format' when calling EmailApi.create_contact"
      end

      # verify enum value
      if api_client.config.client_side_validation && !['VCard', 'WebDav', 'Msg'].include?(@format)
        raise ArgumentError, "invalid value for 'format', must be one of VCard, WebDav, Msg"
      end

      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling EmailApi.create_contact"
      end

      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailApi.create_contact"
      end

      # resource path
      local_var_path = '/email/Contact/{format}/{name}'.sub('{' + 'format' + '}', @format.to_s).sub('{' + 'name' + '}', @name.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
