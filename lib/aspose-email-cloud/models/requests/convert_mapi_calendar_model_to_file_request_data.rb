
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="convert_mapi_calendar_model_to_file_request_data.rb">
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
  # Request model for convert_mapi_calendar_model_to_file operation.
  class ConvertMapiCalendarModelToFileRequestData < EmailRequest

    # File format Enum, available values: Ics, Msg
    # @return [String]
    attr_accessor :destination_format
    # MAPI calendar model to convert
    # @return [MapiCalendarDto]
    attr_accessor :mapi_calendar_dto

    # Converts MAPI calendar model to specified format and returns as file             
    # @param [String] destination_format File format Enum, available values: Ics, Msg
    # @param [MapiCalendarDto] mapi_calendar_dto MAPI calendar model to convert
    def initialize(destination_format, mapi_calendar_dto)
      self.destination_format = destination_format if destination_format
      self.mapi_calendar_dto = mapi_calendar_dto if mapi_calendar_dto
    end

    def to_http_info(api_client)
      # verify the required parameter 'destination_format' is set
      if api_client.config.client_side_validation && self.destination_format.nil?
        raise ArgumentError, "Missing the required parameter 'destination_format' when calling EmailApi.convert_mapi_calendar_model_to_file"
      end

      # verify the required parameter 'mapi_calendar_dto' is set
      if api_client.config.client_side_validation && self.mapi_calendar_dto.nil?
        raise ArgumentError, "Missing the required parameter 'mapi_calendar_dto' when calling EmailApi.convert_mapi_calendar_model_to_file"
      end

      # resource path
      local_var_path = '/email/MapiCalendar/model-as-file/{destinationFormat}'.sub('{' + 'destinationFormat' + '}', self.destination_format.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(self.mapi_calendar_dto)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['multipart/form-data'])
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
