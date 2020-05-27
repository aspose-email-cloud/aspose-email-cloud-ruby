
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="add_calendar_attachment_request_data.rb">
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
  # Request model for add_calendar_attachment operation.
  class AddCalendarAttachmentRequestData < EmailRequest

    # Calendar file name in storage
    # @return [String]
    attr_accessor :name
    # Attachment file name in storage
    # @return [String]
    attr_accessor :attachment
    # Storage name and folder path for calendar and attachment files
    # @return [AddAttachmentRequest]
    attr_accessor :request

    # Adds an attachment to iCalendar file             
    # @param [String] name Calendar file name in storage
    # @param [String] attachment Attachment file name in storage
    # @param [AddAttachmentRequest] request Storage name and folder path for calendar and attachment files
    def initialize(name, attachment, request)
      self.name = name if name
      self.attachment = attachment if attachment
      self.request = request if request
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && self.name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling EmailApi.add_calendar_attachment"
      end

      # verify the required parameter 'attachment' is set
      if api_client.config.client_side_validation && self.attachment.nil?
        raise ArgumentError, "Missing the required parameter 'attachment' when calling EmailApi.add_calendar_attachment"
      end

      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && self.request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailApi.add_calendar_attachment"
      end

      # resource path
      local_var_path = '/email/Calendar/{name}/attachments/{attachment}'.sub('{' + 'name' + '}', self.name.to_s).sub('{' + 'attachment' + '}', self.attachment.to_s)

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
