#part: api/email_api.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_api.rb">
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


require 'uri'

module AsposeEmailCloud
  # Aspose.Email Cloud API
  class EmailClientApi
    attr_accessor :api_client

    # Initializes a new instance of the EmailClientApi class.
    # @param [String] app_key Key to access the server.
    # @param [String] app_sid ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    def initialize(app_key = nil, app_sid = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v3.0', debug = false)
      @api_client = ApiClient.new(app_key, app_sid, base_url, api_version, debug)
    end

    # Adds an email from *.eml file to specified folder in email account
    # @param [append_email_messageRequest] request Request object.
    # @return [EmailPropertyResponse]
    def append_email_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'EmailPropertyResponse')
    end

    # Adds an email from MIME to specified folder in email account
    # @param [append_mime_messageRequest] request Request object.
    # @return [ValueResponse]
    def append_mime_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'ValueResponse')
    end

    # Create new folder in email account
    # @param [create_email_folderRequest] request Request object.
    # @return [nil]
    def create_email_folder(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Delete a folder in email account
    # @param [delete_email_folderRequest] request Request object.
    # @return [nil]
    def delete_email_folder(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Delete message from email account by id
    # @param [delete_email_messageRequest] request Request object.
    # @return [nil]
    def delete_email_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Fetch message mime from email account
    # @param [fetch_email_messageRequest] request Request object.
    # @return [MimeResponse]
    def fetch_email_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'MimeResponse')
    end

    # Get folders list in email account
    # @param [list_email_foldersRequest] request Request object.
    # @return [ListResponseOfMailServerFolder]
    def list_email_folders(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfMailServerFolder')
    end

    # Get messages from folder, filtered by query
    # The query string should have the following view.  The example of a simple expression:   '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.  The number of simple expressions can make a compound one, ex.: (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3>,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator  At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message  Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message  Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item  Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once  The field value (<Field value>) can take the following values: For text fields - any string, For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\", For flags (fields of boolean type) - either \"True\", or \"False\"
    # @param [list_email_messagesRequest] request Request object.
    # @return [ListResponseOfString]
    def list_email_messages(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfString')
    end

    # Create email account file (*.account) with login/password authentication
    # @param [save_mail_accountRequest] request Request object.
    # @return [nil]
    def save_mail_account(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Create email account file (*.account) with OAuth
    # @param [save_mail_o_auth_accountRequest] request Request object.
    # @return [nil]
    def save_mail_o_auth_account(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Send an email from *.eml file located on storage
    # @param [send_emailRequest] request Request object.
    # @return [nil]
    def send_email(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Send an email specified by MIME in request
    # @param [send_email_mimeRequest] request Request object.
    # @return [nil]
    def send_email_mime(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Sets \"Message is read\" flag
    # @param [set_email_read_flagRequest] request Request object.
    # @return [nil]
    def set_email_read_flag(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    private

    def make_request(http_request, method, return_type)
      call_api(http_request, method, return_type)
    rescue ApiError => e
      if e.code.equal? 401
        request_token
        return call_api(http_request, method, return_type)
      end
      raise

    end

    def call_api(http_request, method, return_type)
      response = @api_client.call_api(method,
                                      http_request.resource_path,
                                      header_params: http_request.header_params,
                                      query_params: http_request.query_params,
                                      form_params: http_request.form_params,
                                      body: http_request.body,
                                      auth_names: http_request.auth_names,
                                      return_type: return_type)
      response[0]
    end

    def request_token
      config = @api_client.config
      request_url = '/connect/token'
      form_params =
        {
          'grant_type': 'client_credentials',
          'client_id': config.api_key[:app_sid],
          'client_secret': config.api_key[:api_key]
        }

      header_params =
        {
          'Accept' => 'application/json',
          'Content-Type' =>'application/x-www-form-urlencoded'
        }

      base_path = @api_client.config.base_path
      @api_client.config.base_path = ''

      data = @api_client.call_api(:POST, request_url,
                                  header_params: header_params,
                                  form_params: form_params,
                                  return_type: 'Object')
      access_token = data[0]['access_token'.to_sym]

      @api_client.config.base_path = base_path
      @api_client.config.access_token = access_token
    end
  end
end

#part: models/requests/append_email_message_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="append_email_message_request_data.rb">
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
  # Request model for append_email_message operation.
  class append_email_message_request_data < EmailRequest

    # Adds an email from *.eml file to specified folder in email account
    # @param [AppendEmailBaseRequest] request Append email request
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.append_email_message"
      end

      # resource path
      local_var_path = '/email/client/Append'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/append_mime_message_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="append_mime_message_request_data.rb">
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
  # Request model for append_mime_message operation.
  class append_mime_message_request_data < EmailRequest

    # Adds an email from MIME to specified folder in email account
    # @param [AppendEmailMimeBaseRequest] request Append email request
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.append_mime_message"
      end

      # resource path
      local_var_path = '/email/client/AppendMime'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/create_email_folder_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_email_folder_request_data.rb">
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
  # Request model for create_email_folder operation.
  class create_email_folder_request_data < EmailRequest

    # Create new folder in email account
    # @param [CreateFolderBaseRequest] request Create folder request
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.create_email_folder"
      end

      # resource path
      local_var_path = '/email/client/CreateFolder'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/delete_email_folder_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="delete_email_folder_request_data.rb">
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
  # Request model for delete_email_folder operation.
  class delete_email_folder_request_data < EmailRequest

    # Delete a folder in email account
    # @param [DeleteFolderBaseRequest] request Delete folder request
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.delete_email_folder"
      end

      # resource path
      local_var_path = '/email/client/DeleteFolder'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/delete_email_message_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="delete_email_message_request_data.rb">
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
  # Request model for delete_email_message operation.
  class delete_email_message_request_data < EmailRequest

    # Delete message from email account by id
    # @param [DeleteMessageBaseRequest] request Delete message request
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.delete_email_message"
      end

      # resource path
      local_var_path = '/email/client/DeleteMessage'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/fetch_email_message_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="fetch_email_message_request_data.rb">
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
  # Request model for fetch_email_message operation.
  class fetch_email_message_request_data < EmailRequest

    # Fetch message mime from email account
    # @param [String] message_id Message identifier
    # @param [String] first_account Email account
    # @param [String] second_account Additional email account (should be specified for POP/IMAP accounts and should be SMTP account)
    # @param [String] storage Storage name where account file(s) located
    # @param [String] storage_folder Folder in storage where account file(s) located
    def initialize(message_id, first_account, second_account = nil, storage = nil, storage_folder = nil)
      @message_id = message_id
      @first_account = first_account
      @second_account = second_account
      @storage = storage
      @storage_folder = storage_folder
    end

    def to_http_info(api_client)
      # verify the required parameter 'message_id' is set
      if api_client.config.client_side_validation && @message_id.nil?
        raise ArgumentError, "Missing the required parameter 'message_id' when calling EmailClientApi.fetch_email_message"
      end

      # verify the required parameter 'first_account' is set
      if api_client.config.client_side_validation && @first_account.nil?
        raise ArgumentError, "Missing the required parameter 'first_account' when calling EmailClientApi.fetch_email_message"
      end

      # resource path
      local_var_path = '/email/client/Fetch'

      # query parameters
      query_params = {}
      query_params[:messageId] = @message_id
      query_params[:firstAccount] = @first_account
      query_params[:secondAccount] = @second_account unless @second_account.nil?
      query_params[:storage] = @storage unless @storage.nil?
      query_params[:storageFolder] = @storage_folder unless @storage_folder.nil?

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
#part: models/requests/list_email_folders_request_data.rb
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
  class list_email_folders_request_data < EmailRequest

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
        raise ArgumentError, "Missing the required parameter 'first_account' when calling EmailClientApi.list_email_folders"
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
#part: models/requests/list_email_messages_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="list_email_messages_request_data.rb">
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
  # Request model for list_email_messages operation.
  class list_email_messages_request_data < EmailRequest

    # Get messages from folder, filtered by query
    # The query string should have the following view.  The example of a simple expression:   &#39;&lt;Field name&gt;&#39; &lt;Comparison operator&gt; &#39;&lt;Field value&gt;&#39;,  where &amp;lt;Field Name&amp;gt; - the name of a message field through which filtering is made, &amp;lt;Comparison operator&amp;gt; - comparison operators, as their name implies, allow to compare message field and specified value, &amp;lt;Field value&amp;gt; - value to be compared with a message field.  The number of simple expressions can make a compound one, ex.: (&lt;Simple expression 1&gt; &amp; &lt;Simple expression 2&gt;) | &lt;Simple expression 3&gt;,  where \&quot;&amp;amp;\&quot; - logical-AND operator, \&quot;|\&quot; - logical-OR operator  At present the following values are allowed as a field name (&lt;Field name&gt;):  \&quot;To\&quot; - represents a TO field of message, \&quot;Text\&quot; - represents string in the header or body of the message, \&quot;Bcc\&quot; - represents a BCC field of message, \&quot;Body\&quot; - represents a string in the body of message, \&quot;Cc\&quot; - represents a CC field of message, \&quot;From\&quot; - represents a From field of message, \&quot;Subject\&quot; - represents a string in the subject of message, \&quot;InternalDate\&quot; - represents an internal date of message, \&quot;SentDate\&quot; - represents a sent date of message  Additionally, the following field names are allowed for IMAP-protocol:  \&quot;Answered\&quot; - represents an /Answered flag of message \&quot;Seen\&quot; - represents a /Seen flag of message \&quot;Flagged\&quot; - represents a /Flagged flag of message \&quot;Draft\&quot; - represents a /Draft flag of message \&quot;Deleted\&quot; - represents a Deleted/ flag of message \&quot;Recent\&quot; - represents a Deleted/ flag of message \&quot;MessageSize\&quot; - represents a size (in bytes) of message  Additionally, the following field names are allowed for Exchange:  \&quot;IsRead\&quot; - Indicates whether the message has been read \&quot;HasAttachment\&quot; - Indicates whether or not the message has attachments \&quot;IsSubmitted\&quot; - Indicates whether the message has been submitted to the Outbox \&quot;ContentClass\&quot; - represents a content class of item  Additionally, the following field names are allowed for pst/ost files:  \&quot;MessageClass\&quot; - Represents a message class \&quot;ContainerClass\&quot; - Represents a folder container class \&quot;Importance\&quot; - Represents a message importance \&quot;MessageSize\&quot; - represents a size (in bytes) of message \&quot;FolderName\&quot; - represents a folder name \&quot;ContentsCount\&quot; - represents a total number of items in the folder \&quot;UnreadContentsCount\&quot; - represents the number of unread items in the folder. \&quot;Subfolders\&quot; - Indicates whether or not the folder has subfolders \&quot;Read\&quot; - the message is marked as having been read \&quot;HasAttachment\&quot; - the message has at least one attachment \&quot;Unsent\&quot; - the message is still being composed \&quot;Unmodified\&quot; - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \&quot;FromMe\&quot; - the user receiving the message was also the user who sent the message \&quot;Resend\&quot; - the message includes a request for a resend operation with a non-delivery report \&quot;NotifyRead\&quot; - the user who sent the message has requested notification when a recipient first reads it \&quot;NotifyUnread\&quot; - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \&quot;EverRead\&quot; - the message has been read at least once  The field value (&lt;Field value&gt;) can take the following values: For text fields - any string, For date type fields - the string of \&quot;d-MMM-yyy\&quot; format, ex. \&quot;10-Feb-2009\&quot;, For flags (fields of boolean type) - either \&quot;True\&quot;, or \&quot;False\&quot;
    # @param [String] folder A folder in email account
    # @param [String] query_string A MailQuery search string
    # @param [String] first_account Email account
    # @param [String] second_account Additional email account (should be specified for POP/IMAP accounts and should be SMTP account)
    # @param [String] storage Storage name where account file(s) located
    # @param [String] storage_folder Folder in storage where account file(s) located
    # @param [BOOLEAN] recursive Specifies that should message be searched in subfolders recursively
    def initialize(folder, query_string, first_account, second_account = nil, storage = nil, storage_folder = nil, recursive = nil)
      @folder = folder
      @query_string = query_string
      @first_account = first_account
      @second_account = second_account
      @storage = storage
      @storage_folder = storage_folder
      @recursive = recursive
    end

    def to_http_info(api_client)
      # verify the required parameter 'folder' is set
      if api_client.config.client_side_validation && @folder.nil?
        raise ArgumentError, "Missing the required parameter 'folder' when calling EmailClientApi.list_email_messages"
      end

      # verify the required parameter 'query_string' is set
      if api_client.config.client_side_validation && @query_string.nil?
        raise ArgumentError, "Missing the required parameter 'query_string' when calling EmailClientApi.list_email_messages"
      end

      # verify the required parameter 'first_account' is set
      if api_client.config.client_side_validation && @first_account.nil?
        raise ArgumentError, "Missing the required parameter 'first_account' when calling EmailClientApi.list_email_messages"
      end

      # resource path
      local_var_path = '/email/client/ListMessages'

      # query parameters
      query_params = {}
      query_params[:folder] = @folder
      query_params[:queryString] = @query_string
      query_params[:firstAccount] = @first_account
      query_params[:secondAccount] = @second_account unless @second_account.nil?
      query_params[:storage] = @storage unless @storage.nil?
      query_params[:storageFolder] = @storage_folder unless @storage_folder.nil?
      query_params[:recursive] = @recursive unless @recursive.nil?

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
#part: models/requests/save_mail_account_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="save_mail_account_request_data.rb">
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
  # Request model for save_mail_account operation.
  class save_mail_account_request_data < EmailRequest

    # Create email account file (*.account) with login/password authentication
    # @param [SaveEmailAccountRequest] request Email account information
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.save_mail_account"
      end

      # resource path
      local_var_path = '/email/client/SaveMailAccount'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/save_mail_o_auth_account_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="save_mail_o_auth_account_request_data.rb">
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
  # Request model for save_mail_o_auth_account operation.
  class save_mail_o_auth_account_request_data < EmailRequest

    # Create email account file (*.account) with OAuth
    # @param [SaveOAuthEmailAccountRequest] request Email account information
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.save_mail_o_auth_account"
      end

      # resource path
      local_var_path = '/email/client/SaveMailOAuthAccount'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/send_email_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="send_email_request_data.rb">
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
  # Request model for send_email operation.
  class send_email_request_data < EmailRequest

    # Send an email from *.eml file located on storage
    # @param [SendEmailBaseRequest] request Send email request
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.send_email"
      end

      # resource path
      local_var_path = '/email/client/Send'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/send_email_mime_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="send_email_mime_request_data.rb">
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
  # Request model for send_email_mime operation.
  class send_email_mime_request_data < EmailRequest

    # Send an email specified by MIME in request
    # @param [SendEmailMimeBaseRequest] request Send email request
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.send_email_mime"
      end

      # resource path
      local_var_path = '/email/client/SendMime'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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
#part: models/requests/set_email_read_flag_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="set_email_read_flag_request_data.rb">
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
  # Request model for set_email_read_flag operation.
  class set_email_read_flag_request_data < EmailRequest

    # Sets \&quot;Message is read\&quot; flag
    # @param [SetMessageReadFlagAccountBaseRequest] request Message is read request
    def initialize(request)
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling EmailClientApi.set_email_read_flag"
      end

      # resource path
      local_var_path = '/email/client/SetReadFlag'

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
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

#part: models/requests/http_request.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="http_request.rb">
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


module AsposeEmailCloud

  # Http request data.
  class http_request

    # Initializes a new instance.
    # @param [String] resource_path Path to method endpoint.
    # @param [Hash] header_params Header parameters to be placed in the request header.
    # @param [Hash] query_params Query parameters in the url.
    # @param [Hash] form_params Request post form parameters, for `application/x-www-form-urlencoded`, `multipart/form-data`.
    # @param [Object] body Request body.
    # @param [Array] auth_names Auth Settings names for the request.
    def initialize(resource_path, header_params, query_params, form_params, body, auth_names)
      @resource_path = resource_path
      @query_params = query_params
      @header_params = header_params
      @form_params = form_params
      @body = body
      @auth_names = auth_names
    end

    attr_reader :resource_path, :header_params, :query_params, :form_params, :body, :auth_names
  end
end
#part: models/requests/email_request.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_request.rb">
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


module AsposeEmailCloud

  # Base class for requests with basic operations
  class EmailRequest
    def to_http_info(config); end

    protected

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts)
      return nil if accepts.nil? || accepts.empty?

      # use JSON when present, otherwise use all of the provided
      json_accept = accepts.find { |s| json_mime?(s) }
      json_accept || accepts.join(',')
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types)
      # use application/json by default
      return 'application/json' if content_types.nil? || content_types.empty?

      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      json_content_type || content_types.first
    end

    private

    # Check if the given MIME is a JSON MIME.
    # JSON MIME examples:
    #   application/json
    #   application/json; charset=UTF8
    #   APPLICATION/JSON
    #   */*
    # @param [String] mime MIME
    # @return [Boolean] True if the MIME is application/json
    def json_mime?(mime)
      (mime == '*/*') || !(mime =~ %r{Application/.*json(?!p)(;.*)?}i).nil?
    end
  end
end


