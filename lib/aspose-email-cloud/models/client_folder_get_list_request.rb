#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="client_folder_get_list_request.rb">
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
  # Request model for client_folder_get_list operation.
  class ClientFolderGetListRequest < EmailRequest
    # Email account
    # @return [String]
    attr_accessor :account
    # Storage name where account file located
    # @return [String]
    attr_accessor :storage
    # Folder in storage where account file located
    # @return [String]
    attr_accessor :account_storage_folder
    # Folder in which subfolders should be listed
    # @return [String]
    attr_accessor :parent_folder

    # Get folders list in email account             
    # @param [String] account Email account
    # @param [String] storage Storage name where account file located
    # @param [String] account_storage_folder Folder in storage where account file located
    # @param [String] parent_folder Folder in which subfolders should be listed
    def initialize(account:, storage: nil, account_storage_folder: nil, parent_folder: nil)
      self.account = account if account
      self.storage = storage if storage
      self.account_storage_folder = account_storage_folder if account_storage_folder
      self.parent_folder = parent_folder if parent_folder
    end

    def to_http_info(api_client)
      # verify the required parameter 'account' is set
      if api_client.config.client_side_validation && self.account.nil?
        raise ArgumentError, "Missing the required parameter 'account' when calling ClientFolderApi.get_list"
      end
      # resource path
      local_var_path = '/email/client/folder/list'

      # query parameters
      query_params = {}
      query_params[:account] = self.account
      query_params[:storage] = self.storage unless self.storage.nil?
      query_params[:accountStorageFolder] = self.account_storage_folder unless self.account_storage_folder.nil?
      query_params[:parentFolder] = self.parent_folder unless self.parent_folder.nil?

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

