# AsposeEmailCloud::EmailSaveRequest

Email save to storage request             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**storage_file** |[**StorageFileLocation**](StorageFileLocation.md) |  | 
**value** |[**EmailDto**](EmailDto.md) |  | 
**format** |**String** | Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft | 

Parent class: [StorageModelOfEmailDto](StorageModelOfEmailDto.md)


## Example
```ruby
email_save_request = EmailSaveRequest.new(
  format: 'Msg',
  storage_file: StorageFileLocation.new(
    file_name: 'email.eml',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
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
        address: 'to@aspose.com')]))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
