#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="delete_file_request.rb">
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
  # Request model for delete_file operation.
  class DeleteFileRequest < EmailRequest
    # File path e.g. &#39;/folder/file.ext&#39;
    # @return [String]
    attr_accessor :path
    # Storage name
    # @return [String]
    attr_accessor :storage_name
    # File version ID to delete
    # @return [String]
    attr_accessor :version_id

    # Delete file
    # @param [String] path File path e.g. &#39;/folder/file.ext&#39;
    # @param [String] storage_name Storage name
    # @param [String] version_id File version ID to delete
    def initialize(path:, storage_name: nil, version_id: nil)
      self.path = path if path
      self.storage_name = storage_name if storage_name
      self.version_id = version_id if version_id
    end

    def to_http_info(api_client)
      # verify the required parameter 'path' is set
      if api_client.config.client_side_validation && self.path.nil?
        raise ArgumentError, "Missing the required parameter 'path' when calling FileApi.delete_file"
      end
      # resource path
      local_var_path = '/email/storage/file/{path}'.sub('{' + 'path' + '}', self.path.to_s)

      # query parameters
      query_params = {}
      query_params[:storageName] = self.storage_name unless self.storage_name.nil?
      query_params[:versionId] = self.version_id unless self.version_id.nil?

      # form parameters
      form_params = {}

      # http body (model)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                        header_params: header_params,
                                        query_params: query_params,
                                        form_params: form_params,
                                        auth_names: auth_names)
    end
  end
end
