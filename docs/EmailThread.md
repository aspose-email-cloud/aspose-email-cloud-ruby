# AsposeEmailCloud::EmailThread

Email messages thread             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**id** |**String** | Thread identifier              | [optional] 
**subject** |**String** | Thread subject              | [optional] 
**messages** |[**Array&lt;EmailDto&gt;**](EmailDto.md) | List of messages in thread              | [optional] 
**folder** |**String** | Thread folder location              | [optional] 


## Example
```ruby
email_thread = EmailThread.new(
  id: '5',
  subject: 'Some subject',
  messages: [
    EmailDto.new(
      attachments: [
        Attachment.new(
          name: 'some-file.txt',
          base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
      body: 'Some body',
      body_type: 'Html',
      date: DateTime.now,
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
          address: 'to@aspose.com')]),
    EmailDto.new(
      attachments: [
        Attachment.new(
          name: 'some-file.txt',
          base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
      body: 'Other body',
      body_type: 'Html',
      date: DateTime.now,
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
          address: 'to@aspose.com')])])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
