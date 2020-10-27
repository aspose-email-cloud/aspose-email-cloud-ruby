# EmailFromFileRequest

Request model for EmailApi.from_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** | Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |
**file** |**File** |File to convert |

## Example
```ruby
request = EmailFromFileRequest.new(
    format: 'Eml',
    file: File.new('/path/to/message.eml'))
```
