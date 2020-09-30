# AsposeEmailCloud::AlternateView

Represents the format to view a message.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**base64_data** |**String** | Attachment file content as Base64 string.              | [optional] 
**content_id** |**String** | Attachment content id              | [optional] 
**content_type** |[**ContentType**](ContentType.md) | Content type              | [optional] 
**headers** |**Hash&lt;String, String&gt;** | Attachment headers.              | [optional] 
**base_uri** |**String** | Base URI.              | [optional] 
**linked_resources** |[**Array&lt;LinkedResource&gt;**](LinkedResource.md) | Embedded resources referred to by this alternate view.              | [optional] 

Parent class: [AttachmentBase](AttachmentBase.md)


## Example
```ruby
alternate_view = AlternateView.new(
  base64_data: '<File content represented as Base64 string>',
  content_id: 'fa7a8948-4af1-432a-b4d9-ee0c28542e75',
  content_type: ContentType.new(
    char_set: 'utf-8',
    media_type: 'text/calendar',
    name: 'meeting.ics',
    parameters: [
      ContentTypeParameter.new(
        name: 'Method',
        value: 'REQUEST'),
      ContentTypeParameter.new(
        name: 'Name',
        value: 'meeting.ics'),
      ContentTypeParameter.new(
        name: 'charset',
        value: 'utf-8')]))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
