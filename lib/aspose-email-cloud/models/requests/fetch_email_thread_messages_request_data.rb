
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="fetch_email_thread_messages_request_data.rb">
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
  # Request model for fetch_email_thread_messages operation.
  class FetchEmailThreadMessagesRequestData < EmailRequest

    # Thread identifier
    # @return [String]
    attr_accessor :thread_id
    # Email account
    # @return [String]
    attr_accessor :first_account
    # Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)             
    # @return [String]
    attr_accessor :second_account
    # Specifies account folder to get thread from             
    # @return [String]
    attr_accessor :folder
    # Storage name where account file(s) located
    # @return [String]
    attr_accessor :storage
    # Folder in storage where account file(s) located
    # @return [String]
    attr_accessor :storage_folder

    # Get messages from thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             
    # @param [String] thread_id Thread identifier
    # @param [String] first_account Email account
    # @param [String] second_account Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)             
    # @param [String] folder Specifies account folder to get thread from             
    # @param [String] storage Storage name where account file(s) located
    # @param [String] storage_folder Folder in storage where account file(s) located
    def initialize(thread_id, first_account, second_account = nil, folder = nil, storage = nil, storage_folder = nil)
      self.thread_id = thread_id if thread_id
      self.first_account = first_account if first_account
      self.second_account = second_account if second_account
      self.folder = folder if folder
      self.storage = storage if storage
      self.storage_folder = storage_folder if storage_folder
    end

    def to_http_info(api_client)
      # verify the required parameter 'thread_id' is set
      if api_client.config.client_side_validation && self.thread_id.nil?
        raise ArgumentError, "Missing the required parameter 'thread_id' when calling EmailApi.fetch_email_thread_messages"
      end

      # verify the required parameter 'first_account' is set
      if api_client.config.client_side_validation && self.first_account.nil?
        raise ArgumentError, "Missing the required parameter 'first_account' when calling EmailApi.fetch_email_thread_messages"
      end

      # resource path
      local_var_path = '/email/client/threads/{threadId}/messages'.sub('{' + 'threadId' + '}', self.thread_id.to_s)

      # query parameters
      query_params = {}
      query_params[:firstAccount] = self.first_account
      query_params[:secondAccount] = self.second_account unless self.second_account.nil?
      query_params[:folder] = self.folder unless self.folder.nil?
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
