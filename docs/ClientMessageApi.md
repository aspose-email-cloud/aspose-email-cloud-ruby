# ClientMessageApi (EmailCloud.client.message)

Email client message operations.

<a name="append"></a>
## append

Description: Add email message to specified folder in email account.             

Returns: Message id.

Method call example:
```ruby
result = api.client.message.append(request)
```

### Parameter: request

Description: Append email request.

See parameter model documentation at [ClientMessageAppendRequest](ClientMessageAppendRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageAppendRequest.new(
  folder: 'INBOX/SubFolder',
  message: MailMessageDto.new(
    value: EmailDto.new(
      attachments: [
        Attachment.new(
          name: 'some-file.txt',
          base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
      body: 'Some body',
      body_type: 'Html',
      delivery_notification_options: [
        'OnSuccess',
        'Delay'],
      from: MailAddress.new(
        display_name: 'From Address',
        address: 'from@aspose.com'),
      html_body: '<b>Some body</b>',
      is_body_html: true,
      is_draft: true,
      subject: 'Re: Some subject',
      to: [
        MailAddress.new(
          display_name: 'To Address',
          address: 'to@aspose.com')])),
  mark_as_sent: true,
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```

</details>

### Result

Description: Message id.

Return type: [**ValueTOfString**](ValueTOfString.md)

<details>
    <summary>Result example</summary>

```ruby
result = 
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageAppendRequest.new(
  folder: 'INBOX/SubFolder',
  message: MailMessageDto.new(
    value: EmailDto.new(
      attachments: [
        Attachment.new(
          name: 'some-file.txt',
          base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
      body: 'Some body',
      body_type: 'Html',
      delivery_notification_options: [
        'OnSuccess',
        'Delay'],
      from: MailAddress.new(
        display_name: 'From Address',
        address: 'from@aspose.com'),
      html_body: '<b>Some body</b>',
      is_body_html: true,
      is_draft: true,
      subject: 'Re: Some subject',
      to: [
        MailAddress.new(
          display_name: 'To Address',
          address: 'to@aspose.com')])),
  mark_as_sent: true,
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))

// Call method:
result = api.client.message.append(request)

// Result example:
result = 
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="append_file"></a>
## append_file

Description: Add email message from file to specified folder in email account.             

Returns: Message id.

Method call example:
```ruby
result = api.client.message.append_file(request)
```

### Parameter: request

Description: append_file method request.

See parameter model documentation at [ClientMessageAppendFileRequest](ClientMessageAppendFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageAppendFileRequest.new(
    account: 'email.multi.account',
    file: File.new('/path/to/message.eml'),
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    format: 'Eml',
    folder: 'INBOX')
```

</details>

### Result

Description: Message id.

Return type: [**ValueTOfString**](ValueTOfString.md)

<details>
    <summary>Result example</summary>

```ruby
result = 
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageAppendFileRequest.new(
    account: 'email.multi.account',
    file: File.new('/path/to/message.eml'),
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    format: 'Eml',
    folder: 'INBOX')

// Call method:
result = api.client.message.append_file(request)

// Result example:
result = 
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="delete"></a>
## delete

Description: Delete message.             

Method call example:
```ruby
api.client.message.delete(request)
```

### Parameter: request

Description: Delete message request.

See parameter model documentation at [ClientMessageDeleteRequest](ClientMessageDeleteRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageDeleteRequest.new(
  folder: 'INBOX',
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageDeleteRequest.new(
  folder: 'INBOX',
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))

// Call method:
api.client.message.delete(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="fetch"></a>
## fetch

Description: Fetch message from email account             

Returns: MailMessageBase object that represents fetched message in requested format.

Method call example:
```ruby
result = api.client.message.fetch(request)
```

### Parameter: request

Description: fetch method request.

See parameter model documentation at [ClientMessageFetchRequest](ClientMessageFetchRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageFetchRequest.new(
    message_id: '<put your message identifier here>',
    account: 'email.multi.account',
    folder: 'INBOX',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    type: 'Dto',
    format: 'Eml')
```

</details>

### Result

Description: MailMessageBase object that represents fetched message in requested format.

Return type: [**MailMessageBase**](MailMessageBase.md)

<details>
    <summary>Result example</summary>

```ruby
result = MailMessageBase.new(
  )
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageFetchRequest.new(
    message_id: '<put your message identifier here>',
    account: 'email.multi.account',
    folder: 'INBOX',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    type: 'Dto',
    format: 'Eml')

// Call method:
result = api.client.message.fetch(request)

// Result example:
result = MailMessageBase.new(
  )
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="fetch_file"></a>
## fetch_file

Description: Fetch message as file from email account             

Returns: Email message file in requested format.

Method call example:
```ruby
result = api.client.message.fetch_file(request)
```

### Parameter: request

Description: fetch_file method request.

See parameter model documentation at [ClientMessageFetchFileRequest](ClientMessageFetchFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageFetchFileRequest.new(
    message_id: '<put your message identifier here>',
    account: 'email.multi.account',
    folder: 'INBOX',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    format: 'Eml')
```

</details>

### Result

Description: Email message file in requested format.

Return type: **file**

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageFetchFileRequest.new(
    message_id: '<put your message identifier here>',
    account: 'email.multi.account',
    folder: 'INBOX',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    format: 'Eml')

// Call method:
result = api.client.message.fetch_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="list"></a>
## list

Description: Get messages from folder, filtered by query             

The query string should have the following view.      The example of a simple expression:       '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.      The number of simple expressions can make a compound one, ex.:     (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3     >,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator      At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message      Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message      Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item      The field value (<Field value>) can take the following values:     For text fields - any string,     For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\",     For flags (fields of boolean type) - either \"True\", or \"False\"              

Returns: List of MailMessageBase objects that represent fetched message in requested format.

Method call example:
```ruby
result = api.client.message.list(request)
```

### Parameter: request

Description: list method request.

See parameter model documentation at [ClientMessageListRequest](ClientMessageListRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageListRequest.new(
    folder: 'INBOX',
    account: 'email.multi.account',
    query_string: '('From' Contains '.com')',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    recursive: true,
    type: 'Dto',
    format: 'Eml')
```

</details>

### Result

Description: List of MailMessageBase objects that represent fetched message in requested format.

Return type: [**MailMessageBaseList**](MailMessageBaseList.md)

<details>
    <summary>Result example</summary>

```ruby
result = 
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageListRequest.new(
    folder: 'INBOX',
    account: 'email.multi.account',
    query_string: '('From' Contains '.com')',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    recursive: true,
    type: 'Dto',
    format: 'Eml')

// Call method:
result = api.client.message.list(request)

// Result example:
result = 
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="move"></a>
## move

Description: Move message to another folder.             

Method call example:
```ruby
api.client.message.move(request)
```

### Parameter: request

Description: Move message request.

See parameter model documentation at [ClientMessageMoveRequest](ClientMessageMoveRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageMoveRequest.new(
  source_folder: 'INBOX',
  destination_folder: 'INBOX/SubFolder',
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageMoveRequest.new(
  source_folder: 'INBOX',
  destination_folder: 'INBOX/SubFolder',
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))

// Call method:
api.client.message.move(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="send"></a>
## send

Description: Send an email specified by model in request.             

Method call example:
```ruby
api.client.message.send(request)
```

### Parameter: request

Description: Send email request.

See parameter model documentation at [ClientMessageSendRequest](ClientMessageSendRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageSendRequest.new(
  message: MailMessageDto.new(
    value: EmailDto.new(
      attachments: [
        Attachment.new(
          name: 'some-file.txt',
          base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
      body: 'Some body',
      body_type: 'Html',
      delivery_notification_options: [
        'OnSuccess',
        'Delay'],
      from: MailAddress.new(
        display_name: 'From Address',
        address: 'from@aspose.com'),
      html_body: '<b>Some body</b>',
      is_body_html: true,
      is_draft: true,
      subject: 'Re: Some subject',
      to: [
        MailAddress.new(
          display_name: 'To Address',
          address: 'to@aspose.com')])),
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageSendRequest.new(
  message: MailMessageDto.new(
    value: EmailDto.new(
      attachments: [
        Attachment.new(
          name: 'some-file.txt',
          base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
      body: 'Some body',
      body_type: 'Html',
      delivery_notification_options: [
        'OnSuccess',
        'Delay'],
      from: MailAddress.new(
        display_name: 'From Address',
        address: 'from@aspose.com'),
      html_body: '<b>Some body</b>',
      is_body_html: true,
      is_draft: true,
      subject: 'Re: Some subject',
      to: [
        MailAddress.new(
          display_name: 'To Address',
          address: 'to@aspose.com')])),
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))

// Call method:
api.client.message.send(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="send_file"></a>
## send_file

Description: Send an email file.             

Method call example:
```ruby
api.client.message.send_file(request)
```

### Parameter: request

Description: send_file method request.

See parameter model documentation at [ClientMessageSendFileRequest](ClientMessageSendFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageSendFileRequest.new(
    account: 'email.multi.account',
    file: File.new('/path/to/message.eml'),
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    format: 'Eml')
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageSendFileRequest.new(
    account: 'email.multi.account',
    file: File.new('/path/to/message.eml'),
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    format: 'Eml')

// Call method:
api.client.message.send_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="set_is_read"></a>
## set_is_read

Description: Mark message as read or unread.             

Method call example:
```ruby
api.client.message.set_is_read(request)
```

### Parameter: request

Description: Delete message request.

See parameter model documentation at [ClientMessageSetIsReadRequest](ClientMessageSetIsReadRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientMessageSetIsReadRequest.new(
  is_read: true,
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(client_secret, client_id)

// Prepare parameters:
request = ClientMessageSetIsReadRequest.new(
  is_read: true,
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))

// Call method:
api.client.message.set_is_read(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

