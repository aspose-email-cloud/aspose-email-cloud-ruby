# EmailGetAsFileRequest

Request model for EmailApi.get_as_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file_name** |**String** |Email document file name |
**format** |**String** |File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |
**storage** |**String** |Storage name |[optional] 
**folder** |**String** |Path to folder in storage |[optional] 

## Example
```ruby
request = EmailGetAsFileRequest.new(
    file_name: 'email.eml',
    format: 'Mhtml',
    storage: 'First Storage',
    folder: 'folder/on/storage')
```
