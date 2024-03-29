#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="client_message_list_request.rb">
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
  # Request model for client_message_list operation.
  class ClientMessageListRequest < EmailRequest
    # A folder in email account
    # @return [String]
    attr_accessor :folder
    # Email account
    # @return [String]
    attr_accessor :account
    # A MailQuery search string
    # @return [String]
    attr_accessor :query_string
    # Storage name where account file located
    # @return [String]
    attr_accessor :storage
    # Folder in storage where account file located
    # @return [String]
    attr_accessor :account_storage_folder
    # Specifies that should message be searched in subfolders recursively
    # @return [BOOLEAN]
    attr_accessor :recursive
    # MailMessageBase type. Using this property you can get messages in different formats (as EmailDto, MapiMessageDto or a file represented as Base64 string). Enum, available values: Dto, Mapi, Base64
    # @return [String]
    attr_accessor :type
    # Base64 data format. Used only if type is set to Base64. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft
    # @return [String]
    attr_accessor :format

    # Get messages from folder, filtered by query             
    # The query string should have the following view.      The example of a simple expression:       &#39;&lt;Field name&gt;&#39; &lt;Comparison operator&gt; &#39;&lt;Field value&gt;&#39;,  where &amp;lt;Field Name&amp;gt; - the name of a message field through which filtering is made, &amp;lt;Comparison operator&amp;gt; - comparison operators, as their name implies, allow to compare message field and specified value, &amp;lt;Field value&amp;gt; - value to be compared with a message field.      The number of simple expressions can make a compound one, ex.:     (&lt;Simple expression 1&gt; &amp; &lt;Simple expression 2&gt;) | &lt;Simple expression 3     &gt;,  where \&quot;&amp;amp;\&quot; - logical-AND operator, \&quot;|\&quot; - logical-OR operator      At present the following values are allowed as a field name (&lt;Field name&gt;):  \&quot;To\&quot; - represents a TO field of message, \&quot;Text\&quot; - represents string in the header or body of the message, \&quot;Bcc\&quot; - represents a BCC field of message, \&quot;Body\&quot; - represents a string in the body of message, \&quot;Cc\&quot; - represents a CC field of message, \&quot;From\&quot; - represents a From field of message, \&quot;Subject\&quot; - represents a string in the subject of message, \&quot;InternalDate\&quot; - represents an internal date of message, \&quot;SentDate\&quot; - represents a sent date of message      Additionally, the following field names are allowed for IMAP-protocol:  \&quot;Answered\&quot; - represents an /Answered flag of message \&quot;Seen\&quot; - represents a /Seen flag of message \&quot;Flagged\&quot; - represents a /Flagged flag of message \&quot;Draft\&quot; - represents a /Draft flag of message \&quot;Deleted\&quot; - represents a Deleted/ flag of message \&quot;Recent\&quot; - represents a Deleted/ flag of message \&quot;MessageSize\&quot; - represents a size (in bytes) of message      Additionally, the following field names are allowed for Exchange:  \&quot;IsRead\&quot; - Indicates whether the message has been read \&quot;HasAttachment\&quot; - Indicates whether or not the message has attachments \&quot;IsSubmitted\&quot; - Indicates whether the message has been submitted to the Outbox \&quot;ContentClass\&quot; - represents a content class of item      The field value (&lt;Field value&gt;) can take the following values:     For text fields - any string,     For date type fields - the string of \&quot;d-MMM-yyy\&quot; format, ex. \&quot;10-Feb-2009\&quot;,     For flags (fields of boolean type) - either \&quot;True\&quot;, or \&quot;False\&quot;              
    # @param [String] folder A folder in email account
    # @param [String] account Email account
    # @param [String] query_string A MailQuery search string
    # @param [String] storage Storage name where account file located
    # @param [String] account_storage_folder Folder in storage where account file located
    # @param [BOOLEAN] recursive Specifies that should message be searched in subfolders recursively
    # @param [String] type MailMessageBase type. Using this property you can get messages in different formats (as EmailDto, MapiMessageDto or a file represented as Base64 string). Enum, available values: Dto, Mapi, Base64
    # @param [String] format Base64 data format. Used only if type is set to Base64. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft
    def initialize(folder:, account:, query_string: nil, storage: nil, account_storage_folder: nil, recursive: nil, type: nil, format: nil)
      self.folder = folder if folder
      self.account = account if account
      self.query_string = query_string if query_string
      self.storage = storage if storage
      self.account_storage_folder = account_storage_folder if account_storage_folder
      self.recursive = recursive if recursive
      self.type = type if type
      self.format = format if format
    end

    def to_http_info(api_client)
      # verify the required parameter 'folder' is set
      if api_client.config.client_side_validation && self.folder.nil?
        raise ArgumentError, "Missing the required parameter 'folder' when calling ClientMessageApi.list"
      end
      # verify the required parameter 'account' is set
      if api_client.config.client_side_validation && self.account.nil?
        raise ArgumentError, "Missing the required parameter 'account' when calling ClientMessageApi.list"
      end
      # resource path
      local_var_path = '/email/client/message/list'

      # query parameters
      query_params = {}
      query_params[:folder] = self.folder
      query_params[:account] = self.account
      query_params[:queryString] = self.query_string unless self.query_string.nil?
      query_params[:storage] = self.storage unless self.storage.nil?
      query_params[:accountStorageFolder] = self.account_storage_folder unless self.account_storage_folder.nil?
      query_params[:recursive] = self.recursive unless self.recursive.nil?
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
