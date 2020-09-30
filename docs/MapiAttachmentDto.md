# AsposeEmailCloud::MapiAttachmentDto

Mapi attachment             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**name** |**String** | Attachment's name              | [optional] 
**data_base64** |**String** | Attachment data represented as Base64 string.              | [optional] 


## Example
```ruby
mapi_attachment_dto = MapiAttachmentDto.new(
  name: 'some-file.txt',
  data_base64: 'U29tZSBmaWxlIHRleHQ=')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
