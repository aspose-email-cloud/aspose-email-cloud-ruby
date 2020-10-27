# ContactConvertRequest

Request model for ContactApi.convert

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**to_format** |**String** |File format to convert to Enum, available values: VCard, WebDav, Msg |
**from_format** |**String** |File format to convert from Enum, available values: VCard, WebDav, Msg |
**file** |**File** |File to convert |

## Example
```ruby
request = ContactConvertRequest.new(
    to_format: 'VCard',
    from_format: 'Msg',
    file: File.new('/path/to/contact.msg'))
```
