# AsposeEmailCloud::EmailThreadList

List of email threads             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;EmailThread&gt;**](EmailThread.md) |  | [optional] 

Parent class: [ListResponseOfEmailThread](ListResponseOfEmailThread.md)


## Example
```ruby
email_thread_list = EmailThreadList.new(
  value: [
    EmailThread.new(
      id: '123',
      subject: 'Some email subject',
      messages: [
        EmailDto.new(
          date: DateTime.now,
          from: MailAddress.new(
            address: 'from@aspose.com'),
          message_id: '1',
          subject: 'Some email subject',
          to: [
            MailAddress.new(
              address: 'to@aspose.com')]),
        EmailDto.new(
          date: DateTime.now,
          from: MailAddress.new(
            address: 'from@aspose.com'),
          message_id: '3',
          subject: 'Re: Some email subject',
          to: [
            MailAddress.new(
              address: 'to@aspose.com')])])])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
