
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="update_contact_properties_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for update_contact_properties operation.
  class UpdateContactPropertiesRequestData < EmailRequest

    # Contact document format Enum, available values: VCard, WebDav, Msg
    # @return [String]
    attr_accessor :format
    # Contact document file name
    # @return [String]
    attr_accessor :name
    # Properties that should be updated/added
    # @return [HierarchicalObjectRequest]
    attr_accessor :request

    # Update contact document properties             
    # @param [String] format Contact document format Enum, available values: VCard, WebDav, Msg
    # @param [String] name Contact document file name
    # @param [HierarchicalObjectRequest] request Properties that should be updated/added
    def initialize(format, name, request)
      self.format = format if format
      self.name = name if name
      self.request = request if request
    end

    def to_http_info(api_client)
      # verify the required parameter 'format' is set
      if api_client.config.client_side_validation && self.format.nil?
        raise ArgumentError, "Missing the required parameter 'format' when calling EmailApi.update_contact_properties"
      end

      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && self.name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling EmailApi.update_contact_properties"
      end

      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && self.request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailApi.update_contact_properties"
      end

      # resource path
      local_var_path = '/email/Contact/{format}/{name}/properties'.sub('{' + 'format' + '}', self.format.to_s).sub('{' + 'name' + '}', self.name.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(self.request)
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
