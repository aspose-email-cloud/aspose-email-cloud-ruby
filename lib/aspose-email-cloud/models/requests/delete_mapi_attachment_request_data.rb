
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="delete_mapi_attachment_request_data.rb">
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
  # Request model for delete_mapi_attachment operation.
  class DeleteMapiAttachmentRequestData < EmailRequest

    # Remove attachment from document
    # @param [String] name Document file name
    # @param [String] attachment Attachment name or index
    # @param [StorageFolderLocation] storage Document file storage location info
    def initialize(name, attachment, storage)
      @name = name
      @attachment = attachment
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'name' is set
      if config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling EmailApi.delete_mapi_attachment"
      end

      # verify the required parameter 'attachment' is set
      if config.client_side_validation && @attachment.nil?
        raise ArgumentError, "Missing the required parameter 'attachment' when calling EmailApi.delete_mapi_attachment"
      end

      # verify the required parameter 'storage' is set
      if config.client_side_validation && @storage.nil?
        raise ArgumentError, "Missing the required parameter 'storage' when calling EmailApi.delete_mapi_attachment"
      end

      # resource path
      local_var_path = '/email/Mapi/{name}/attachments/{attachment}'.sub('{' + 'name' + '}', @name.to_s).sub('{' + 'attachment' + '}', @attachment.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(@storage)
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
