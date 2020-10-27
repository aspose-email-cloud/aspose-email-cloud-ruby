# AsposeEmailCloud::ClientMessageAppendRequest

Email client append message request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**folder** |**String** | Path to folder on email server to append message to.              | [optional] 
**message** |[**MailMessageBase**](MailMessageBase.md) | Message to append.              | 
**mark_as_sent** |**BOOLEAN** | Determines that appended message should be market as sent or not.              | 

Parent class: [ClientAccountBaseRequest](ClientAccountBaseRequest.md)


## Example
```ruby
client_message_append_request = ClientMessageAppendRequest.new(
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
