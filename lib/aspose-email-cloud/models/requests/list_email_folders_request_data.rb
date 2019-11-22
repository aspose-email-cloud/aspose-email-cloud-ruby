
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="list_email_folders_request_data.rb">
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
  # Request model for list_email_folders operation.
  class ListEmailFoldersRequestData < EmailRequest

    # Get folders list in email account
    # @param [String] first_account Email account
    # @param [String] second_account Additional email account (should be specified for POP/IMAP accounts and should be SMTP account)
    # @param [String] storage Storage name where account file(s) located
    # @param [String] storage_folder Folder in storage where account file(s) located
    # @param [String] parent_folder Folder in which subfolders should be listed
    def initialize(first_account, second_account = nil, storage = nil, storage_folder = nil, parent_folder = nil)
      @first_account = first_account
      @second_account = second_account
      @storage = storage
      @storage_folder = storage_folder
      @parent_folder = parent_folder
    end

    def to_http_info(api_client)
      # verify the required parameter 'first_account' is set
      if api_client.config.client_side_validation && @first_account.nil?
        raise ArgumentError, "Missing the required parameter 'first_account' when calling EmailApi.list_email_folders"
      end

      # resource path
      local_var_path = '/email/client/ListFolders'

      # query parameters
      query_params = {}
      query_params[:firstAccount] = @first_account
      query_params[:secondAccount] = @second_account unless @second_account.nil?
      query_params[:storage] = @storage unless @storage.nil?
      query_params[:storageFolder] = @storage_folder unless @storage_folder.nil?
      query_params[:parentFolder] = @parent_folder unless @parent_folder.nil?

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
