# AsposeEmailCloud::MailMessageBase64

Email message represented as file, encoded to Base64 format.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**discriminator** |**String** |  | 
**value_base64** |**String** | Email message file data encoded to Base64 string.              | 
**format** |**String** | Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft | 

Parent class: [MailMessageBase](MailMessageBase.md)


## Example
```ruby
mail_message_base64 = MailMessageBase64.new(
  value_base64: 'RnJvbTogZkBmLnVzClRvOiB0QHQudXMKU3ViamVjdDogUwoKQm9keQ==')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
