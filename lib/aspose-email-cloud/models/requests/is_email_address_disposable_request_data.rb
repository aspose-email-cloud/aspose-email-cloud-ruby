
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="is_email_address_disposable_request_data.rb">
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
  # Request model for is_email_address_disposable operation.
  class IsEmailAddressDisposableRequestData < EmailRequest

    # An email address to check
    # @return [String]
    attr_accessor :address

    # Check email address is disposable             
    # @param [String] address An email address to check
    def initialize(address)
      self.address = address if address
    end

    def to_http_info(api_client)
      # verify the required parameter 'address' is set
      if api_client.config.client_side_validation && self.address.nil?
        raise ArgumentError, "Missing the required parameter 'address' when calling EmailApi.is_email_address_disposable"
      end

      # resource path
      local_var_path = '/email/disposable/isDisposable/{address}'.sub('{' + 'address' + '}', self.address.to_s)

      # query parameters
      query_params = {}

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
