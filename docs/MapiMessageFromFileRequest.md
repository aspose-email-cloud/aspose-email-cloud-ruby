# MapiMessageFromFileRequest

Request model for MapiMessageApi.from_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** |File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |
**file** |**File** |File to convert |

## Example
```ruby
request = MapiMessageFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/message.msg'))
```
