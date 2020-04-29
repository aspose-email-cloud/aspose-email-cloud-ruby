
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_email_thread_request_data.rb">
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
  # Request model for get_email_thread operation.
  class GetEmailThreadRequestData < EmailRequest

    # Thread identifier
    # @return [String]
    attr_accessor :thread_id
    # Email account
    # @return [String]
    attr_accessor :first_account
    # Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)             
    # @return [String]
    attr_accessor :second_account
    # Specifies account folder to get thread from (required for some account types, such as EWS). Use folder Id from ListEmailFolders (MailServerFolder.Id). For IMAP folder Id is always same as folder name.             
    # @return [String]
    attr_accessor :folder_id
    # Storage name where account file(s) located
    # @return [String]
    attr_accessor :storage
    # Folder in storage where account file(s) located
    # @return [String]
    attr_accessor :storage_folder

    # Get message thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             
    # @param [String] thread_id Thread identifier
    # @param [String] first_account Email account
    # @param [String] second_account Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)             
    # @param [String] folder_id Specifies account folder to get thread from (required for some account types, such as EWS). Use folder Id from ListEmailFolders (MailServerFolder.Id). For IMAP folder Id is always same as folder name.             
    # @param [String] storage Storage name where account file(s) located
    # @param [String] storage_folder Folder in storage where account file(s) located
    def initialize(thread_id, first_account, second_account = nil, folder_id = nil, storage = nil, storage_folder = nil)
      self.thread_id = thread_id if thread_id
      self.first_account = first_account if first_account
      self.second_account = second_account if second_account
      self.folder_id = folder_id if folder_id
      self.storage = storage if storage
      self.storage_folder = storage_folder if storage_folder
    end

    def to_http_info(api_client)
      # verify the required parameter 'thread_id' is set
      if api_client.config.client_side_validation && self.thread_id.nil?
        raise ArgumentError, "Missing the required parameter 'thread_id' when calling EmailApi.get_email_thread"
      end

      # verify the required parameter 'first_account' is set
      if api_client.config.client_side_validation && self.first_account.nil?
        raise ArgumentError, "Missing the required parameter 'first_account' when calling EmailApi.get_email_thread"
      end

      # resource path
      local_var_path = '/email/client/threads/{threadId}'.sub('{' + 'threadId' + '}', self.thread_id.to_s)

      # query parameters
      query_params = {}
      query_params[:firstAccount] = self.first_account
      query_params[:secondAccount] = self.second_account unless self.second_account.nil?
      query_params[:folderId] = self.folder_id unless self.folder_id.nil?
      query_params[:storage] = self.storage unless self.storage.nil?
      query_params[:storageFolder] = self.storage_folder unless self.storage_folder.nil?

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
