#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="mapi_calendar_get_request.rb">
#    Copyright (c) 2018-2023 Aspose Pty Ltd. All rights reserved.
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
  # Request model for mapi_calendar_get operation.
  class MapiCalendarGetRequest < EmailRequest
    # Calendar file name in storage.
    # @return [String]
    attr_accessor :file_name
    # Path to folder in storage.
    # @return [String]
    attr_accessor :folder
    # Storage name.
    # @return [String]
    attr_accessor :storage

    # Get MAPI calendar document.             
    # @param [String] file_name Calendar file name in storage.
    # @param [String] folder Path to folder in storage.
    # @param [String] storage Storage name.
    def initialize(file_name:, folder: nil, storage: nil)
      self.file_name = file_name if file_name
      self.folder = folder if folder
      self.storage = storage if storage
    end

    def to_http_info(api_client)
      # verify the required parameter 'file_name' is set
      if api_client.config.client_side_validation && self.file_name.nil?
        raise ArgumentError, "Missing the required parameter 'file_name' when calling MapiCalendarApi.get"
      end
      # resource path
      local_var_path = '/email/MapiCalendar'

      # query parameters
      query_params = {}
      query_params[:fileName] = self.file_name
      query_params[:folder] = self.folder unless self.folder.nil?
      query_params[:storage] = self.storage unless self.storage.nil?

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



