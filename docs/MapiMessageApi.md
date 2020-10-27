# MapiMessageApi (EmailCloud.mapi.message)

MAPI message operations

<a name="as_email_dto"></a>
## as_email_dto

Description: Converts MAPI message model to EmailDto model             

Returns: EmailDto model

Method call example:
```ruby
result = api.mapi.message.as_email_dto(mapi_message)
```

### Parameter: mapi_message

Description: MAPI message model to convert

See parameter model documentation at [MapiMessageDto](MapiMessageDto.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
mapi_message = MapiMessageDto.new(
  message_body: 'Some body',
  client_submit_time: DateTime.now,
  delivery_time: DateTime.now,
  display_to: 'To Address',
  flags: [
    'MsgFlagRead',
    'MsgFlagUnsent',
    'MsgFlagHasAttach'],
  normalized_subject: 'Some subject',
  sender_address_type: 'SMTP',
  sender_email_address: 'from@aspose.com',
  sender_name: 'From Address',
  sender_smtp_address: 'from@aspose.com',
  attachments: [
    MapiAttachmentDto.new(
      name: 'some-file.txt',
      data_base64: 'U29tZSBmaWxlIHRleHQ=')],
  body: 'Some body',
  message_class: 'IPM.Note',
  recipients: [
    MapiRecipientDto.new(
      email_address: 'to@aspose.com',
      address_type: 'SMTP',
      display_name: 'To Address',
      recipient_type: 'MapiTo')],
  subject: 'Re: Some subject',
  subject_prefix: 'Re: ')
```

</details>

### Result

Description: EmailDto model

Return type: [**EmailDto**](EmailDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = EmailDto.new(
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
      address: 'to@aspose.com')])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
mapi_message = MapiMessageDto.new(
  message_body: 'Some body',
  client_submit_time: DateTime.now,
  delivery_time: DateTime.now,
  display_to: 'To Address',
  flags: [
    'MsgFlagRead',
    'MsgFlagUnsent',
    'MsgFlagHasAttach'],
  normalized_subject: 'Some subject',
  sender_address_type: 'SMTP',
  sender_email_address: 'from@aspose.com',
  sender_name: 'From Address',
  sender_smtp_address: 'from@aspose.com',
  attachments: [
    MapiAttachmentDto.new(
      name: 'some-file.txt',
      data_base64: 'U29tZSBmaWxlIHRleHQ=')],
  body: 'Some body',
  message_class: 'IPM.Note',
  recipients: [
    MapiRecipientDto.new(
      email_address: 'to@aspose.com',
      address_type: 'SMTP',
      display_name: 'To Address',
      recipient_type: 'MapiTo')],
  subject: 'Re: Some subject',
  subject_prefix: 'Re: ')

// Call method:
result = api.mapi.message.as_email_dto(mapi_message)

// Result example:
result = EmailDto.new(
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
      address: 'to@aspose.com')])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="as_file"></a>
## as_file

Description: Converts MAPI message model to specified format and returns as file.             

Returns: File stream in specified format.

Method call example:
```ruby
result = api.mapi.message.as_file(request)
```

### Parameter: request

Description: MAPI message model to convert.

See parameter model documentation at [MapiMessageAsFileRequest](MapiMessageAsFileRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiMessageAsFileRequest.new(
  format: 'Msg',
  value: MapiMessageDto.new(
    message_body: 'Some body',
    client_submit_time: DateTime.now,
    delivery_time: DateTime.now,
    display_to: 'To Address',
    flags: [
      'MsgFlagRead',
      'MsgFlagUnsent',
      'MsgFlagHasAttach'],
    normalized_subject: 'Some subject',
    sender_address_type: 'SMTP',
    sender_email_address: 'from@aspose.com',
    sender_name: 'From Address',
    sender_smtp_address: 'from@aspose.com',
    attachments: [
      MapiAttachmentDto.new(
        name: 'some-file.txt',
        data_base64: 'U29tZSBmaWxlIHRleHQ=')],
    body: 'Some body',
    message_class: 'IPM.Note',
    recipients: [
      MapiRecipientDto.new(
        email_address: 'to@aspose.com',
        address_type: 'SMTP',
        display_name: 'To Address',
        recipient_type: 'MapiTo')],
    subject: 'Re: Some subject',
    subject_prefix: 'Re: '))
```

</details>

### Result

Description: File stream in specified format.

Return type: **file**

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = MapiMessageAsFileRequest.new(
  format: 'Msg',
  value: MapiMessageDto.new(
    message_body: 'Some body',
    client_submit_time: DateTime.now,
    delivery_time: DateTime.now,
    display_to: 'To Address',
    flags: [
      'MsgFlagRead',
      'MsgFlagUnsent',
      'MsgFlagHasAttach'],
    normalized_subject: 'Some subject',
    sender_address_type: 'SMTP',
    sender_email_address: 'from@aspose.com',
    sender_name: 'From Address',
    sender_smtp_address: 'from@aspose.com',
    attachments: [
      MapiAttachmentDto.new(
        name: 'some-file.txt',
        data_base64: 'U29tZSBmaWxlIHRleHQ=')],
    body: 'Some body',
    message_class: 'IPM.Note',
    recipients: [
      MapiRecipientDto.new(
        email_address: 'to@aspose.com',
        address_type: 'SMTP',
        display_name: 'To Address',
        recipient_type: 'MapiTo')],
    subject: 'Re: Some subject',
    subject_prefix: 'Re: '))

// Call method:
result = api.mapi.message.as_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="from_file"></a>
## from_file

Description: Converts email file to a MAPI model representation             

Returns: MAPI model

Method call example:
```ruby
result = api.mapi.message.from_file(request)
```

### Parameter: request

Description: from_file method request.

See parameter model documentation at [MapiMessageFromFileRequest](MapiMessageFromFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiMessageFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/message.msg'))
```

</details>

### Result

Description: MAPI model

Return type: [**MapiMessageDto**](MapiMessageDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = MapiMessageDto.new(
  message_body: 'Some body',
  client_submit_time: DateTime.now,
  delivery_time: DateTime.now,
  display_to: 'To Address',
  flags: [
    'MsgFlagRead',
    'MsgFlagUnsent',
    'MsgFlagHasAttach'],
  normalized_subject: 'Some subject',
  sender_address_type: 'SMTP',
  sender_email_address: 'from@aspose.com',
  sender_name: 'From Address',
  sender_smtp_address: 'from@aspose.com',
  attachments: [
    MapiAttachmentDto.new(
      name: 'some-file.txt',
      data_base64: 'U29tZSBmaWxlIHRleHQ=')],
  body: 'Some body',
  message_class: 'IPM.Note',
  recipients: [
    MapiRecipientDto.new(
      email_address: 'to@aspose.com',
      address_type: 'SMTP',
      display_name: 'To Address',
      recipient_type: 'MapiTo')],
  subject: 'Re: Some subject',
  subject_prefix: 'Re: ')
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = MapiMessageFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/message.msg'))

// Call method:
result = api.mapi.message.from_file(request)

// Result example:
result = MapiMessageDto.new(
  message_body: 'Some body',
  client_submit_time: DateTime.now,
  delivery_time: DateTime.now,
  display_to: 'To Address',
  flags: [
    'MsgFlagRead',
    'MsgFlagUnsent',
    'MsgFlagHasAttach'],
  normalized_subject: 'Some subject',
  sender_address_type: 'SMTP',
  sender_email_address: 'from@aspose.com',
  sender_name: 'From Address',
  sender_smtp_address: 'from@aspose.com',
  attachments: [
    MapiAttachmentDto.new(
      name: 'some-file.txt',
      data_base64: 'U29tZSBmaWxlIHRleHQ=')],
  body: 'Some body',
  message_class: 'IPM.Note',
  recipients: [
    MapiRecipientDto.new(
      email_address: 'to@aspose.com',
      address_type: 'SMTP',
      display_name: 'To Address',
      recipient_type: 'MapiTo')],
  subject: 'Re: Some subject',
  subject_prefix: 'Re: ')
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get"></a>
## get

Description: Get MAPI message document.             

Returns: MAPI message document.

Method call example:
```ruby
result = api.mapi.message.get(request)
```

### Parameter: request

Description: get method request.

See parameter model documentation at [MapiMessageGetRequest](MapiMessageGetRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiMessageGetRequest.new(
    format: 'Eml',
    file_name: 'email.eml',
    folder: 'folder/on/storage',
    storage: 'First Storage')
```

</details>

### Result

Description: MAPI message document.

Return type: [**MapiMessageDto**](MapiMessageDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = MapiMessageDto.new(
  message_body: 'Some body',
  client_submit_time: DateTime.now,
  delivery_time: DateTime.now,
  display_to: 'To Address',
  flags: [
    'MsgFlagRead',
    'MsgFlagUnsent',
    'MsgFlagHasAttach'],
  normalized_subject: 'Some subject',
  sender_address_type: 'SMTP',
  sender_email_address: 'from@aspose.com',
  sender_name: 'From Address',
  sender_smtp_address: 'from@aspose.com',
  attachments: [
    MapiAttachmentDto.new(
      name: 'some-file.txt',
      data_base64: 'U29tZSBmaWxlIHRleHQ=')],
  body: 'Some body',
  message_class: 'IPM.Note',
  recipients: [
    MapiRecipientDto.new(
      email_address: 'to@aspose.com',
      address_type: 'SMTP',
      display_name: 'To Address',
      recipient_type: 'MapiTo')],
  subject: 'Re: Some subject',
  subject_prefix: 'Re: ')
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = MapiMessageGetRequest.new(
    format: 'Eml',
    file_name: 'email.eml',
    folder: 'folder/on/storage',
    storage: 'First Storage')

// Call method:
result = api.mapi.message.get(request)

// Result example:
result = MapiMessageDto.new(
  message_body: 'Some body',
  client_submit_time: DateTime.now,
  delivery_time: DateTime.now,
  display_to: 'To Address',
  flags: [
    'MsgFlagRead',
    'MsgFlagUnsent',
    'MsgFlagHasAttach'],
  normalized_subject: 'Some subject',
  sender_address_type: 'SMTP',
  sender_email_address: 'from@aspose.com',
  sender_name: 'From Address',
  sender_smtp_address: 'from@aspose.com',
  attachments: [
    MapiAttachmentDto.new(
      name: 'some-file.txt',
      data_base64: 'U29tZSBmaWxlIHRleHQ=')],
  body: 'Some body',
  message_class: 'IPM.Note',
  recipients: [
    MapiRecipientDto.new(
      email_address: 'to@aspose.com',
      address_type: 'SMTP',
      display_name: 'To Address',
      recipient_type: 'MapiTo')],
  subject: 'Re: Some subject',
  subject_prefix: 'Re: ')
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="save"></a>
## save

Description: Save MAPI message to storage.             

Method call example:
```ruby
api.mapi.message.save(request)
```

### Parameter: request

Description: Message create/update request.

See parameter model documentation at [MapiMessageSaveRequest](MapiMessageSaveRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiMessageSaveRequest.new(
  format: 'Msg',
  storage_file: StorageFileLocation.new(
    file_name: 'message.msg',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
  value: MapiMessageDto.new(
    message_body: 'Some body',
    client_submit_time: DateTime.now,
    delivery_time: DateTime.now,
    display_to: 'To Address',
    flags: [
      'MsgFlagRead',
      'MsgFlagUnsent',
      'MsgFlagHasAttach'],
    normalized_subject: 'Some subject',
    sender_address_type: 'SMTP',
    sender_email_address: 'from@aspose.com',
    sender_name: 'From Address',
    sender_smtp_address: 'from@aspose.com',
    attachments: [
      MapiAttachmentDto.new(
        name: 'some-file.txt',
        data_base64: 'U29tZSBmaWxlIHRleHQ=')],
    body: 'Some body',
    message_class: 'IPM.Note',
    recipients: [
      MapiRecipientDto.new(
        email_address: 'to@aspose.com',
        address_type: 'SMTP',
        display_name: 'To Address',
        recipient_type: 'MapiTo')],
    subject: 'Re: Some subject',
    subject_prefix: 'Re: '))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = MapiMessageSaveRequest.new(
  format: 'Msg',
  storage_file: StorageFileLocation.new(
    file_name: 'message.msg',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
  value: MapiMessageDto.new(
    message_body: 'Some body',
    client_submit_time: DateTime.now,
    delivery_time: DateTime.now,
    display_to: 'To Address',
    flags: [
      'MsgFlagRead',
      'MsgFlagUnsent',
      'MsgFlagHasAttach'],
    normalized_subject: 'Some subject',
    sender_address_type: 'SMTP',
    sender_email_address: 'from@aspose.com',
    sender_name: 'From Address',
    sender_smtp_address: 'from@aspose.com',
    attachments: [
      MapiAttachmentDto.new(
        name: 'some-file.txt',
        data_base64: 'U29tZSBmaWxlIHRleHQ=')],
    body: 'Some body',
    message_class: 'IPM.Note',
    recipients: [
      MapiRecipientDto.new(
        email_address: 'to@aspose.com',
        address_type: 'SMTP',
        display_name: 'To Address',
        recipient_type: 'MapiTo')],
    subject: 'Re: Some subject',
    subject_prefix: 'Re: '))

// Call method:
api.mapi.message.save(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

