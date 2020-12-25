#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_api.rb">
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

require 'uri'

module AsposeEmailCloud
  # ClientMessageApi operations.
  class ClientMessageApi
    attr_reader :api_invoker

    # Initializes a new instance of the ClientMessageApi class.
    # @param [String] client_secret Key to access the server.
    # @param [String] client_id ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    # def initialize(client_secret = nil, client_id = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v4.0', debug = false)
    #   @api_client = ApiClient.new(client_secret, client_id, base_url, api_version, debug)
    # end

    # Initializes a new instance of the ClientMessageApi class.
    # @param [ApiInvoker] api_invoker
    def initialize(api_invoker)
      @api_invoker = api_invoker
    end

    # Add email message to specified folder in email account.             
    # @param [ClientMessageAppendRequest] request Append email request.
    # @return [ValueTOfString]
    def append(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling ClientMessageApi.append"
      end

      local_var_path = '/email/client/message/append'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :POST, 'ValueTOfString')
    end

    # Add email message from file to specified folder in email account.             
    # @param [ClientMessageAppendFileRequest] request Request object.
    # @return [ValueTOfString]
    def append_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :POST, 'ValueTOfString')
    end

    # Delete message.             
    # @param [ClientMessageDeleteRequest] request Delete message request.
    # @return [nil]
    def delete(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling ClientMessageApi.delete"
      end

      local_var_path = '/email/client/message'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :DELETE, nil)
      nil
    end

    # Fetch message from email account             
    # @param [ClientMessageFetchRequest] request Request object.
    # @return [MailMessageBase]
    def fetch(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'MailMessageBase')
    end

    # Fetch message as file from email account             
    # @param [ClientMessageFetchFileRequest] request Request object.
    # @return [File]
    def fetch_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'File')
    end

    # Get messages from folder, filtered by query             
    # The query string should have the following view.      The example of a simple expression:       '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.      The number of simple expressions can make a compound one, ex.:     (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3     >,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator      At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message      Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message      Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item      Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once      The field value (<Field value>) can take the following values:     For text fields - any string,     For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\",     For flags (fields of boolean type) - either \"True\", or \"False\"              
    # @param [ClientMessageListRequest] request Request object.
    # @return [MailMessageBaseList]
    def list(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'MailMessageBaseList')
    end

    # Move message to another folder.             
    # @param [ClientMessageMoveRequest] request Move message request.
    # @return [nil]
    def move(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling ClientMessageApi.move"
      end

      local_var_path = '/email/client/message/move'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, nil)
      nil
    end

    # Send an email specified by model in request.             
    # @param [ClientMessageSendRequest] request Send email request.
    # @return [nil]
    def send(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling ClientMessageApi.send"
      end

      local_var_path = '/email/client/message'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :POST, nil)
      nil
    end

    # Send an email file.             
    # @param [ClientMessageSendFileRequest] request Request object.
    # @return [nil]
    def send_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :POST, nil)
      nil
    end

    # Mark message as read or unread.             
    # @param [ClientMessageSetIsReadRequest] request Delete message request.
    # @return [nil]
    def set_is_read(request)
      # verify the required parameter 'request' is set
      if @api_invoker.api_client.config.client_side_validation && request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling ClientMessageApi.set_is_read"
      end

      local_var_path = '/email/client/message/set-is-read'
      post_body = @api_invoker.api_client.object_to_http_body(request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = EmailRequest.select_header_content_type(['application/json'])
      http_request = AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                                       header_params: header_params,
                                                       body: post_body,
                                                       auth_names: auth_names)

      @api_invoker.make_request(http_request, :PUT, nil)
      nil
    end
  end
end



