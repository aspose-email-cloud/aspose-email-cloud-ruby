# ContactGetRequest

Request model for ContactApi.get

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** |Contact document format. Enum, available values: VCard, WebDav, Msg |
**file_name** |**String** |Contact document file name. |
**folder** |**String** |Path to folder in storage. |[optional] 
**storage** |**String** |Storage name. |[optional] 

## Example
```ruby
request = ContactGetRequest.new(
    format: 'VCard',
    file_name: 'contact.vcf',
    folder: 'folder/on/storage',
    storage: 'First Storage')
```
