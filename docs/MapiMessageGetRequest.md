# MapiMessageGetRequest

Request model for MapiMessageApi.get

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** |Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |
**file_name** |**String** |Email document file name. |
**folder** |**String** |Path to folder in storage. |[optional] 
**storage** |**String** |Storage name. |[optional] 

## Example
```ruby
request = MapiMessageGetRequest.new(
    format: 'Eml',
    file_name: 'email.eml',
    folder: 'folder/on/storage',
    storage: 'First Storage')
```
