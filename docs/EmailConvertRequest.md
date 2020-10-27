# EmailConvertRequest

Request model for EmailApi.convert

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**from_format** |**String** |File format to convert to Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |
**to_format** |**String** |File format to convert from Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |
**file** |**File** |File to convert |

## Example
```ruby
request = EmailConvertRequest.new(
    from_format: 'Msg',
    to_format: 'Mhtml',
    file: File.new('/path/to/message.msg'))
```
