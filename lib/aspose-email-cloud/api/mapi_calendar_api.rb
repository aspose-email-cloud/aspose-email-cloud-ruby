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
  # MapiCalendarApi operations.
  class MapiCalendarApi
    attr_reader :api_invoker

    # Initializes a new instance of the MapiCalendarApi class.
    # @param [String] app_key Key to access the server.
    # @param [String] app_sid ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    # def initialize(app_key = nil, app_sid = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v4.0', debug = false)
    #   @api_client = ApiClient.new(app_key, app_sid, base_url, api_version, debug)
    # end

    # Initializes a new instance of the MapiCalendarApi class.
    # @param [ApiInvoker] api_invoker
    def initialize(api_invoker)
      @api_invoker = api_invoker
    end

    # Converts MAPI calendar model to CalendarDto model.             
    # @param [MapiCalendarDto] mapi_calendar_dto MAPI calendar model to convert.
    # @return [CalendarDto]
    def as_calendar_dto(mapi_calendar_dto)
      # verify the required parameter 'mapi_calendar_dto' is set
      if @api_invoker.api_client.config.client_side_validation && mapi_calendar_dto.nil?
        raise ArgumentError, "Missing the required parameter 'mapi_calendar_dto' when calling MapiCalendarApi.as_calendar_dto"
      end

      local_var_path = '/email/MapiCalendar/as-calendar-dto'
      post_body = @api_invoker.api_client.object_to_http_body(mapi_calendar_dto)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, 'CalendarDto')
    end

    # Converts MAPI calendar model to specified format and returns as file.             
    # @param [MapiCalendarAsFileRequest] request MAPI calendar model to convert.
    # @return [File]
    def as_file(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling MapiCalendarApi.as_file"
      end

      local_var_path = '/email/MapiCalendar/as-file'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, 'File')
    end

    # Converts calendar file to a MAPI model representation.             
    # @param [MapiCalendarFromFileRequest] request Request object.
    # @return [MapiCalendarDto]
    def from_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :PUT, 'MapiCalendarDto')
    end

    # Get MAPI calendar document.             
    # @param [MapiCalendarGetRequest] request Request object.
    # @return [MapiCalendarDto]
    def get(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'MapiCalendarDto')
    end

    # Save MAPI Calendar to storage.             
    # @param [MapiCalendarSaveRequest] request Calendar create/update request.
    # @return [nil]
    def save(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling MapiCalendarApi.save"
      end

      local_var_path = '/email/MapiCalendar'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, nil)
      nil
    end
  end
end
