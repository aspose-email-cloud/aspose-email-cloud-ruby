
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="add_email_attachment_request_data.rb">
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
  # Request model for add_email_attachment operation.
  class AddEmailAttachmentRequestData < EmailRequest

    # Attachment file name
    # @return [String]
    attr_accessor :attachment_name
    # Email document file name
    # @return [String]
    attr_accessor :file_name
    # Storage info to specify location of email document and attachment files
    # @return [AddAttachmentRequest]
    attr_accessor :request

    # Adds an attachment to Email document             
    # @param [String] attachment_name Attachment file name
    # @param [String] file_name Email document file name
    # @param [AddAttachmentRequest] request Storage info to specify location of email document and attachment files
    def initialize(attachment_name, file_name, request)
      self.attachment_name = attachment_name if attachment_name
      self.file_name = file_name if file_name
      self.request = request if request
    end

    def to_http_info(api_client)
      # verify the required parameter 'attachment_name' is set
      if api_client.config.client_side_validation && self.attachment_name.nil?
        raise ArgumentError, "Missing the required parameter 'attachment_name' when calling EmailApi.add_email_attachment"
      end

      # verify the required parameter 'file_name' is set
      if api_client.config.client_side_validation && self.file_name.nil?
        raise ArgumentError, "Missing the required parameter 'file_name' when calling EmailApi.add_email_attachment"
      end

      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && self.request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailApi.add_email_attachment"
      end

      # resource path
      local_var_path = '/email/{fileName}/attachments/{attachmentName}'.sub('{' + 'attachmentName' + '}', self.attachment_name.to_s).sub('{' + 'fileName' + '}', self.file_name.to_s)

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
