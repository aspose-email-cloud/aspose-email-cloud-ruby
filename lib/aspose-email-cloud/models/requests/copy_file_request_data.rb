
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="copy_file_request_data.rb">
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
  # Request model for copy_file operation.
  class CopyFileRequestData < EmailRequest

    # Copy file
    # @param [String] src_path Source file path e.g. &#39;/folder/file.ext&#39;
    # @param [String] dest_path Destination file path
    # @param [String] src_storage_name Source storage name
    # @param [String] dest_storage_name Destination storage name
    # @param [String] version_id File version ID to copy
    def initialize(src_path, dest_path, src_storage_name = nil, dest_storage_name = nil, version_id = nil)
      @src_path = src_path
      @dest_path = dest_path
      @src_storage_name = src_storage_name
      @dest_storage_name = dest_storage_name
      @version_id = version_id
    end

    def to_http_info(config)
      # verify the required parameter 'src_path' is set
      if config.client_side_validation && @src_path.nil?
        raise ArgumentError, "Missing the required parameter 'src_path' when calling EmailApi.copy_file"
      end

      # verify the required parameter 'dest_path' is set
      if config.client_side_validation && @dest_path.nil?
        raise ArgumentError, "Missing the required parameter 'dest_path' when calling EmailApi.copy_file"
      end

      # resource path
      local_var_path = '/email/storage/file/copy/{srcPath}'.sub('{' + 'srcPath' + '}', @src_path.to_s)

      # query parameters
      query_params = {}
      query_params[:destPath] = @dest_path
      query_params[:srcStorageName] = @src_storage_name unless @src_storage_name.nil?
      query_params[:destStorageName] = @dest_storage_name unless @dest_storage_name.nil?
      query_params[:versionId] = @version_id unless @version_id.nil?

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
