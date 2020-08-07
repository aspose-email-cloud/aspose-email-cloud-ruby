#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="client_message_append_file_request.rb">
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
  # Request model for client_message_append_file operation.
  class ClientMessageAppendFileRequest < EmailRequest
    # Email account.
    # @return [String]
    attr_accessor :account
    # Message file to append.
    # @return [File]
    attr_accessor :file
    # Storage name where account file located.
    # @return [String]
    attr_accessor :storage
    # Folder in storage where account file located.
    # @return [String]
    attr_accessor :account_storage_folder
    # Email file format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef
    # @return [String]
    attr_accessor :format
    # Path to folder on email server to append message to.
    # @return [String]
    attr_accessor :folder
    # Determines that appended message should be market as sent or not.
    # @return [BOOLEAN]
    attr_accessor :mark_as_sent

    # Add email message from file to specified folder in email account.             
    # @param [String] account Email account.
    # @param [File] file Message file to append.
    # @param [String] storage Storage name where account file located.
    # @param [String] account_storage_folder Folder in storage where account file located.
    # @param [String] format Email file format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef
    # @param [String] folder Path to folder on email server to append message to.
    # @param [BOOLEAN] mark_as_sent Determines that appended message should be market as sent or not.
    def initialize(account:, file:, storage: nil, account_storage_folder: nil, format: nil, folder: nil, mark_as_sent: nil)
      self.account = account if account
      self.file = file if file
      self.storage = storage if storage
      self.account_storage_folder = account_storage_folder if account_storage_folder
      self.format = format if format
      self.folder = folder if folder
      self.mark_as_sent = mark_as_sent if mark_as_sent
    end

    def to_http_info(api_client)
      # verify the required parameter 'account' is set
      if api_client.config.client_side_validation && self.account.nil?
        raise ArgumentError, "Missing the required parameter 'account' when calling ClientMessageApi.append_file"
      end
      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && self.file.nil?
        raise ArgumentError, "Missing the required parameter 'file' when calling ClientMessageApi.append_file"
      end
      # resource path
      local_var_path = '/email/client/message/file/append'

      # query parameters
      query_params = {}
      query_params[:account] = self.account
      query_params[:storage] = self.storage unless self.storage.nil?
      query_params[:accountStorageFolder] = self.account_storage_folder unless self.account_storage_folder.nil?
      query_params[:format] = self.format unless self.format.nil?
      query_params[:folder] = self.folder unless self.folder.nil?
      query_params[:markAsSent] = self.mark_as_sent unless self.mark_as_sent.nil?

      # form parameters
      form_params = {}
      form_params['File'] = self.file

      # http body (model)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : EmailRequest.select_header_content_type(['multipart/form-data'])

      AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                        header_params: header_params,
                                        query_params: query_params,
                                        form_params: form_params,
                                        auth_names: auth_names)
    end
  end
end
