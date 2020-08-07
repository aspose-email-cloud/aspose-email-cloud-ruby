#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="delete_folder_request.rb">
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
  # Request model for delete_folder operation.
  class DeleteFolderRequest < EmailRequest
    # Folder path e.g. &#39;/folder&#39;
    # @return [String]
    attr_accessor :path
    # Storage name
    # @return [String]
    attr_accessor :storage_name
    # Enable to delete folders, subfolders and files
    # @return [BOOLEAN]
    attr_accessor :recursive

    # Delete folder
    # @param [String] path Folder path e.g. &#39;/folder&#39;
    # @param [String] storage_name Storage name
    # @param [BOOLEAN] recursive Enable to delete folders, subfolders and files
    def initialize(path:, storage_name: nil, recursive: nil)
      self.path = path if path
      self.storage_name = storage_name if storage_name
      self.recursive = recursive if recursive
    end

    def to_http_info(api_client)
      # verify the required parameter 'path' is set
      if api_client.config.client_side_validation && self.path.nil?
        raise ArgumentError, "Missing the required parameter 'path' when calling FolderApi.delete_folder"
      end
      # resource path
      local_var_path = '/email/storage/folder/{path}'.sub('{' + 'path' + '}', self.path.to_s)

      # query parameters
      query_params = {}
      query_params[:storageName] = self.storage_name unless self.storage_name.nil?
      query_params[:recursive] = self.recursive unless self.recursive.nil?

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
