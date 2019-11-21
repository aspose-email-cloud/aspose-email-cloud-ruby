# EmailClientApi

<a name="append_email_message"></a>
# **append_email_message**
> append_email_message(request)

Adds an email from *.eml file to specified folder in email account

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AppendEmailMessageRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AppendEmailBaseRequest**](AppendEmailBaseRequest.md)| Append email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="append_mime_message"></a>
# **append_mime_message**
> append_mime_message(request)

Adds an email from MIME to specified folder in email account

### Return type

[**ValueResponse**](ValueResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AppendMimeMessageRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AppendEmailMimeBaseRequest**](AppendEmailMimeBaseRequest.md)| Append email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_email_folder"></a>
# **create_email_folder**
> create_email_folder(request)

Create new folder in email account

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateEmailFolderRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateFolderBaseRequest**](CreateFolderBaseRequest.md)| Create folder request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_email_folder"></a>
# **delete_email_folder**
> delete_email_folder(request)

Delete a folder in email account

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteEmailFolderRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeleteFolderBaseRequest**](DeleteFolderBaseRequest.md)| Delete folder request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_email_message"></a>
# **delete_email_message**
> delete_email_message(request)

Delete message from email account by id

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteEmailMessageRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeleteMessageBaseRequest**](DeleteMessageBaseRequest.md)| Delete message request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="fetch_email_message"></a>
# **fetch_email_message**
> fetch_email_message(request)

Fetch message mime from email account

### Return type

[**MimeResponse**](MimeResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::FetchEmailMessageRequestData.new(message_id, first_account, second_account=second_account, storage=storage, storage_folder=storage_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message identifier | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="list_email_folders"></a>
# **list_email_folders**
> list_email_folders(request)

Get folders list in email account

### Return type

[**ListResponseOfMailServerFolder**](ListResponseOfMailServerFolder.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ListEmailFoldersRequestData.new(first_account, second_account=second_account, storage=storage, storage_folder=storage_folder, parent_folder=parent_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **parent_folder** | **String**| Folder in which subfolders should be listed | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="list_email_messages"></a>
# **list_email_messages**
> list_email_messages(request)

Get messages from folder, filtered by query

The query string should have the following view.  The example of a simple expression:   '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.  The number of simple expressions can make a compound one, ex.: (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3>,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator  At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message  Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message  Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item  Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once  The field value (<Field value>) can take the following values: For text fields - any string, For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\", For flags (fields of boolean type) - either \"True\", or \"False\"

### Return type

[**ListResponseOfString**](ListResponseOfString.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ListEmailMessagesRequestData.new(folder, query_string, first_account, second_account=second_account, storage=storage, storage_folder=storage_folder, recursive=recursive)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| A folder in email account | 
 **query_string** | **String**| A MailQuery search string | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **recursive** | **BOOLEAN**| Specifies that should message be searched in subfolders recursively | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_mail_account"></a>
# **save_mail_account**
> save_mail_account(request)

Create email account file (*.account) with login/password authentication

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveMailAccountRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SaveEmailAccountRequest**](SaveEmailAccountRequest.md)| Email account information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_mail_o_auth_account"></a>
# **save_mail_o_auth_account**
> save_mail_o_auth_account(request)

Create email account file (*.account) with OAuth

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveMailOAuthAccountRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SaveOAuthEmailAccountRequest**](SaveOAuthEmailAccountRequest.md)| Email account information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="send_email"></a>
# **send_email**
> send_email(request)

Send an email from *.eml file located on storage

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SendEmailRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendEmailBaseRequest**](SendEmailBaseRequest.md)| Send email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="send_email_mime"></a>
# **send_email_mime**
> send_email_mime(request)

Send an email specified by MIME in request

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SendEmailMimeRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendEmailMimeBaseRequest**](SendEmailMimeBaseRequest.md)| Send email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="set_email_read_flag"></a>
# **set_email_read_flag**
> set_email_read_flag(request)

Sets \"Message is read\" flag

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SetEmailReadFlagRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SetMessageReadFlagAccountBaseRequest**](SetMessageReadFlagAccountBaseRequest.md)| Message is read request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

