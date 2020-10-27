# ContactFromFileRequest

Request model for ContactApi.from_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** |File format Enum, available values: VCard, WebDav, Msg |
**file** |**File** |File to convert |

## Example
```ruby
request = ContactFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/contact.msg'))
```
