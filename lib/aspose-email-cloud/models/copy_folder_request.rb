#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="copy_folder_request.rb">
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
  # Request model for copy_folder operation.
  class CopyFolderRequest < EmailRequest
    # Source folder path e.g. &#39;/src&#39;
    # @return [String]
    attr_accessor :src_path
    # Destination folder path e.g. &#39;/dst&#39;
    # @return [String]
    attr_accessor :dest_path
    # Source storage name
    # @return [String]
    attr_accessor :src_storage_name
    # Destination storage name
    # @return [String]
    attr_accessor :dest_storage_name

    # Copy folder
    # @param [String] src_path Source folder path e.g. &#39;/src&#39;
    # @param [String] dest_path Destination folder path e.g. &#39;/dst&#39;
    # @param [String] src_storage_name Source storage name
    # @param [String] dest_storage_name Destination storage name
    def initialize(src_path:, dest_path:, src_storage_name: nil, dest_storage_name: nil)
      self.src_path = src_path if src_path
      self.dest_path = dest_path if dest_path
      self.src_storage_name = src_storage_name if src_storage_name
      self.dest_storage_name = dest_storage_name if dest_storage_name
    end

    def to_http_info(api_client)
      # verify the required parameter 'src_path' is set
      if api_client.config.client_side_validation && self.src_path.nil?
        raise ArgumentError, "Missing the required parameter 'src_path' when calling FolderApi.copy_folder"
      end
      # verify the required parameter 'dest_path' is set
      if api_client.config.client_side_validation && self.dest_path.nil?
        raise ArgumentError, "Missing the required parameter 'dest_path' when calling FolderApi.copy_folder"
      end
      # resource path
      local_var_path = '/email/storage/folder/copy/{srcPath}'.sub('{' + 'srcPath' + '}', self.src_path.to_s)

      # query parameters
      query_params = {}
      query_params[:destPath] = self.dest_path
      query_params[:srcStorageName] = self.src_storage_name unless self.src_storage_name.nil?
      query_params[:destStorageName] = self.dest_storage_name unless self.dest_storage_name.nil?

      # form parameters
      form_params = {}

      # http body (model)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : EmailRequest.select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                        header_params: header_params,
                                        query_params: query_params,
                                        form_params: form_params,
                                        auth_names: auth_names)
    end
  end
end
