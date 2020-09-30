# AsposeEmailCloud::MailMessageDto

Represents email message, stored as an EmailDto object.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**discriminator** |**String** |  | 
**value** |[**EmailDto**](EmailDto.md) | Message document object.              | 

Parent class: [MailMessageBase](MailMessageBase.md)


## Example
```ruby
mail_message_dto = MailMessageDto.new(
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
