#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_config_discover_request.rb">
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
  # Request model for email_config_discover operation.
  class EmailConfigDiscoverRequest < EmailRequest
    # Email address.
    # @return [String]
    attr_accessor :address
    # Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned.             
    # @return [BOOLEAN]
    attr_accessor :fast_processing

    # Discover email accounts by email address. Does not validate discovered accounts.             
    # @param [String] address Email address.
    # @param [BOOLEAN] fast_processing Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned.             
    def initialize(address:, fast_processing: nil)
      self.address = address if address
      self.fast_processing = fast_processing if fast_processing
    end

    def to_http_info(api_client)
      # verify the required parameter 'address' is set
      if api_client.config.client_side_validation && self.address.nil?
        raise ArgumentError, "Missing the required parameter 'address' when calling EmailConfigApi.discover"
      end
      # resource path
      local_var_path = '/email/config/discover'

      # query parameters
      query_params = {}
      query_params[:address] = self.address
      query_params[:fastProcessing] = self.fast_processing unless self.fast_processing.nil?

      # form parameters
      form_params = {}

      # http body (model)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : EmailRequest.select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                        header_params: header_params,
                                        query_params: query_params,
                                        form_params: form_params,
                                        auth_names: auth_names)
    end
  end
end



