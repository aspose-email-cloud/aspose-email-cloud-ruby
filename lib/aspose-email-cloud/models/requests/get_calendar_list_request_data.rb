
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_calendar_list_request_data.rb">
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
  # Request model for get_calendar_list operation.
  class GetCalendarListRequestData < EmailRequest

    # Get iCalendar files list in folder on storage
    # @param [String] folder Path to folder in storage
    # @param [Integer] items_per_page Count of items on page
    # @param [Integer] page_number Page number
    # @param [String] storage Storage name
    def initialize(folder, items_per_page, page_number, storage = nil)
      @folder = folder
      @items_per_page = items_per_page
      @page_number = page_number
      @storage = storage
    end

    def to_http_info(api_client)
      # verify the required parameter 'folder' is set
      if api_client.config.client_side_validation && @folder.nil?
        raise ArgumentError, "Missing the required parameter 'folder' when calling EmailApi.get_calendar_list"
      end

      # verify the required parameter 'items_per_page' is set
      if api_client.config.client_side_validation && @items_per_page.nil?
        raise ArgumentError, "Missing the required parameter 'items_per_page' when calling EmailApi.get_calendar_list"
      end

      # verify the required parameter 'page_number' is set
      if api_client.config.client_side_validation && @page_number.nil?
        raise ArgumentError, "Missing the required parameter 'page_number' when calling EmailApi.get_calendar_list"
      end

      # resource path
      local_var_path = '/email/Calendar'

      # query parameters
      query_params = {}
      query_params[:folder] = @folder
      query_params[:itemsPerPage] = @items_per_page
      query_params[:pageNumber] = @page_number
      query_params[:storage] = @storage unless @storage.nil?

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
