# MapiContactFromFileRequest

Request model for MapiContactApi.from_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** |File format Enum, available values: VCard, WebDav, Msg |
**file** |**File** |File to convert |

## Example
```ruby
request = MapiContactFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/contact.msg'))
```
