#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="client_message_fetch_request.rb">
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
  # Request model for client_message_fetch operation.
  class ClientMessageFetchRequest < EmailRequest
    # Message identifier
    # @return [String]
    attr_accessor :message_id
    # Email account
    # @return [String]
    attr_accessor :account
    # Account folder to fetch from (should be specified for some protocols such as IMAP)             
    # @return [String]
    attr_accessor :folder
    # Storage name where account file located.
    # @return [String]
    attr_accessor :storage
    # Folder in storage where account file located.
    # @return [String]
    attr_accessor :account_storage_folder
    # MailMessageBase type. Using this property you can fetch message in different formats (as EmailDto, MapiMessageDto or a file represented as Base64 string)./nEnum, available values: Dto, Mapi, Base64
    # @return [String]
    attr_accessor :type
    # Base64 data format. Used only if type is set to Base64./nEnum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft
    # @return [String]
    attr_accessor :format

    # Fetch message from email account             
    # @param [String] message_id Message identifier
    # @param [String] account Email account
    # @param [String] folder Account folder to fetch from (should be specified for some protocols such as IMAP)             
    # @param [String] storage Storage name where account file located.
    # @param [String] account_storage_folder Folder in storage where account file located.
    # @param [String] type MailMessageBase type. Using this property you can fetch message in different formats (as EmailDto, MapiMessageDto or a file represented as Base64 string)./nEnum, available values: Dto, Mapi, Base64
    # @param [String] format Base64 data format. Used only if type is set to Base64./nEnum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft
    def initialize(message_id:, account:, folder: nil, storage: nil, account_storage_folder: nil, type: nil, format: nil)
      self.message_id = message_id if message_id
      self.account = account if account
      self.folder = folder if folder
      self.storage = storage if storage
      self.account_storage_folder = account_storage_folder if account_storage_folder
      self.type = type if type
      self.format = format if format
    end

    def to_http_info(api_client)
      # verify the required parameter 'message_id' is set
      if api_client.config.client_side_validation && self.message_id.nil?
        raise ArgumentError, "Missing the required parameter 'message_id' when calling ClientMessageApi.fetch"
      end
      # verify the required parameter 'account' is set
      if api_client.config.client_side_validation && self.account.nil?
        raise ArgumentError, "Missing the required parameter 'account' when calling ClientMessageApi.fetch"
      end
      # resource path
      local_var_path = '/email/client/message'

      # query parameters
      query_params = {}
      query_params[:messageId] = self.message_id
      query_params[:account] = self.account
      query_params[:folder] = self.folder unless self.folder.nil?
      query_params[:storage] = self.storage unless self.storage.nil?
      query_params[:accountStorageFolder] = self.account_storage_folder unless self.account_storage_folder.nil?
      query_params[:type] = self.type unless self.type.nil?
      query_params[:format] = self.format unless self.format.nil?

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
