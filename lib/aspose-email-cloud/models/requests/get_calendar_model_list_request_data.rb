
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_calendar_model_list_request_data.rb">
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
  # Request model for get_calendar_model_list operation.
  class GetCalendarModelListRequestData < EmailRequest

    # Path to folder in storage
    # @return [String]
    attr_accessor :folder
    # Count of items on page
    # @return [Integer]
    attr_accessor :items_per_page
    # Page number
    # @return [Integer]
    attr_accessor :page_number
    # Storage name
    # @return [String]
    attr_accessor :storage

    # Get iCalendar list from storage folder             
    # @param [String] folder Path to folder in storage
    # @param [Integer] items_per_page Count of items on page
    # @param [Integer] page_number Page number
    # @param [String] storage Storage name
    def initialize(folder, items_per_page = nil, page_number = nil, storage = nil)
      self.folder = folder if folder
      self.items_per_page = items_per_page if items_per_page
      self.page_number = page_number if page_number
      self.storage = storage if storage
    end

    def to_http_info(api_client)
      # verify the required parameter 'folder' is set
      if api_client.config.client_side_validation && self.folder.nil?
        raise ArgumentError, "Missing the required parameter 'folder' when calling EmailApi.get_calendar_model_list"
      end

      # resource path
      local_var_path = '/email/CalendarModel'

      # query parameters
      query_params = {}
      query_params[:folder] = self.folder
      query_params[:itemsPerPage] = self.items_per_page unless self.items_per_page.nil?
      query_params[:pageNumber] = self.page_number unless self.page_number.nil?
      query_params[:storage] = self.storage unless self.storage.nil?

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
