# ClientMessageApi

<a name="client_message_append"></a>
# **client_message_append**
> client_message_append(request)

Add email message to specified folder in email account.             

### Return type

[**ValueTOfString**](ValueTOfString.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageAppendRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientMessageAppendRequest**](ClientMessageAppendRequest.md)| Append email request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_append_file"></a>
# **client_message_append_file**
> client_message_append_file(request)

Add email message from file to specified folder in email account.             

### Return type

[**ValueTOfString**](ValueTOfString.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageAppendFileRequestData.new(account, file, storage=storage, account_storage_folder=account_storage_folder, format=format, folder=folder, mark_as_sent=mark_as_sent)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Email account. | 
 **file** | **File**| Message file to append. | 
 **storage** | **String**| Storage name where account file located. | [optional] 
 **account_storage_folder** | **String**| Folder in storage where account file located. | [optional] 
 **format** | **String**| Email file format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | [optional] [default to 0]
 **folder** | **String**| Path to folder on email server to append message to. | [optional] 
 **mark_as_sent** | **BOOLEAN**| Determines that appended message should be market as sent or not. | [optional] [default to true]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_delete"></a>
# **client_message_delete**
> client_message_delete(request)

Delete message.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageDeleteRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientMessageDeleteRequest**](ClientMessageDeleteRequest.md)| Delete message request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_fetch"></a>
# **client_message_fetch**
> client_message_fetch(request)

Fetch message from email account             

### Return type

[**MailMessageBase**](MailMessageBase.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageFetchRequestData.new(message_id, account, folder=folder, storage=storage, account_storage_folder=account_storage_folder, type=type, format=format)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message identifier | 
 **account** | **String**| Email account | 
 **folder** | **String**| Account folder to fetch from (should be specified for some protocols such as IMAP)              | [optional] 
 **storage** | **String**| Storage name where account file located. | [optional] 
 **account_storage_folder** | **String**| Folder in storage where account file located. | [optional] 
 **type** | **String**| MailMessageBase type. Using this property you can fetch message in different formats (as EmailDto, MapiMessageDto or a file represented as Base64 string).              Enum, available values: Dto, Mapi, Base64 | [optional] [default to 0]
 **format** | **String**| Base64 data format. Used only if type is set to Base64. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_fetch_file"></a>
# **client_message_fetch_file**
> client_message_fetch_file(request)

Fetch message as file from email account             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageFetchFileRequestData.new(message_id, account, folder=folder, storage=storage, account_storage_folder=account_storage_folder, format=format)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message identifier | 
 **account** | **String**| Email account | 
 **folder** | **String**| Account folder to fetch from (should be specified for some protocols such as IMAP)              | [optional] 
 **storage** | **String**| Storage name where account file located. | [optional] 
 **account_storage_folder** | **String**| Folder in storage where account file located. | [optional] 
 **format** | **String**| Fetched message file format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_list"></a>
# **client_message_list**
> client_message_list(request)

Get messages from folder, filtered by query             

The query string should have the following view.      The example of a simple expression:       '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.      The number of simple expressions can make a compound one, ex.:     (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3     >,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator      At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message      Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message      Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item      Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once      The field value (<Field value>) can take the following values:     For text fields - any string,     For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\",     For flags (fields of boolean type) - either \"True\", or \"False\"              

### Return type

[**MailMessageBaseList**](MailMessageBaseList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageListRequestData.new(folder, account, query_string=query_string, storage=storage, account_storage_folder=account_storage_folder, recursive=recursive, type=type, format=format)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| A folder in email account | 
 **account** | **String**| Email account | 
 **query_string** | **String**| A MailQuery search string | [optional] 
 **storage** | **String**| Storage name where account file located | [optional] 
 **account_storage_folder** | **String**| Folder in storage where account file located | [optional] 
 **recursive** | **BOOLEAN**| Specifies that should message be searched in subfolders recursively | [optional] [default to false]
 **type** | **String**| MailMessageBase type. Using this property you can get messages in different formats (as EmailDto, MapiMessageDto or a file represented as Base64 string).              Enum, available values: Dto, Mapi, Base64 | [optional] [default to 0]
 **format** | **String**| Base64 data format. Used only if type is set to Base64. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_move"></a>
# **client_message_move**
> client_message_move(request)

Move message to another folder.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageMoveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientMessageMoveRequest**](ClientMessageMoveRequest.md)| Move message request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_send"></a>
# **client_message_send**
> client_message_send(request)

Send an email specified by model in request.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageSendRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientMessageSendRequest**](ClientMessageSendRequest.md)| Send email request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_send_file"></a>
# **client_message_send_file**
> client_message_send_file(request)

Send an email file.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageSendFileRequestData.new(account, file, storage=storage, account_storage_folder=account_storage_folder, format=format)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Email account | 
 **file** | **File**| File to send | 
 **storage** | **String**| Storage name where account file located. | [optional] 
 **account_storage_folder** | **String**| Folder in storage where account file located. | [optional] 
 **format** | **String**| Email file format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_message_set_is_read"></a>
# **client_message_set_is_read**
> client_message_set_is_read(request)

Mark message as read or unread.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientMessageSetIsReadRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientMessageSetIsReadRequest**](ClientMessageSetIsReadRequest.md)| Delete message request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

