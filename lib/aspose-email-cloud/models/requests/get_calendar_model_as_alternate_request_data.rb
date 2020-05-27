
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_calendar_model_as_alternate_request_data.rb">
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
  # Request model for get_calendar_model_as_alternate operation.
  class GetCalendarModelAsAlternateRequestData < EmailRequest

    # iCalendar file name in storage
    # @return [String]
    attr_accessor :name
    # iCalendar method type Enum, available values: Create, Update, Cancel
    # @return [String]
    attr_accessor :calendar_action
    # The sequence id
    # @return [String]
    attr_accessor :sequence_id
    # Path to folder in storage
    # @return [String]
    attr_accessor :folder
    # Storage name
    # @return [String]
    attr_accessor :storage

    # Get iCalendar from storage as AlternateView             
    # @param [String] name iCalendar file name in storage
    # @param [String] calendar_action iCalendar method type Enum, available values: Create, Update, Cancel
    # @param [String] sequence_id The sequence id
    # @param [String] folder Path to folder in storage
    # @param [String] storage Storage name
    def initialize(name, calendar_action, sequence_id = nil, folder = nil, storage = nil)
      self.name = name if name
      self.calendar_action = calendar_action if calendar_action
      self.sequence_id = sequence_id if sequence_id
      self.folder = folder if folder
      self.storage = storage if storage
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && self.name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling EmailApi.get_calendar_model_as_alternate"
      end

      # verify the required parameter 'calendar_action' is set
      if api_client.config.client_side_validation && self.calendar_action.nil?
        raise ArgumentError, "Missing the required parameter 'calendar_action' when calling EmailApi.get_calendar_model_as_alternate"
      end

      # resource path
      local_var_path = '/email/CalendarModel/{name}/as-alternate/{calendarAction}'.sub('{' + 'name' + '}', self.name.to_s).sub('{' + 'calendarAction' + '}', self.calendar_action.to_s)

      # query parameters
      query_params = {}
      query_params[:sequenceId] = self.sequence_id unless self.sequence_id.nil?
      query_params[:folder] = self.folder unless self.folder.nil?
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
