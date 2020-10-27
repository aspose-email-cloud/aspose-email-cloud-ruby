# AsposeEmailCloud::MailMessageMapi

Email message represented as MAPI object.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**discriminator** |**String** |  | 
**value** |[**MapiMessageDto**](MapiMessageDto.md) | Email message object.              | 

Parent class: [MailMessageBase](MailMessageBase.md)


## Example
```ruby
mail_message_mapi = MailMessageMapi.new(
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
