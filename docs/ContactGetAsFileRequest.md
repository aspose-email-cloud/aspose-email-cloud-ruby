# ContactGetAsFileRequest

Request model for ContactApi.get_as_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file_name** |**String** |Calendar document file name |
**to_format** |**String** |File format Enum, available values: VCard, WebDav, Msg |
**from_format** |**String** |File format to convert from Enum, available values: VCard, WebDav, Msg |
**storage** |**String** |Storage name |[optional] 
**folder** |**String** |Path to folder in storage |[optional] 

## Example
```ruby
request = ContactGetAsFileRequest.new(
    file_name: 'contact.msg',
    to_format: 'VCard',
    from_format: 'Msg',
    storage: 'First Storage',
    folder: 'folder/on/storage')
```
