# ClientAccountGetRequest

Request model for ClientAccountApi.get

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file_name** |**String** |File name on storage. |
**folder** |**String** |Folder on storage. |[optional] 
**storage** |**String** |Storage name. |[optional] 

## Example
```ruby
request = ClientAccountGetRequest.new(
    file_name: 'email.account',
    folder: 'email/account/location/on/storage',
    storage: 'First Storage')
```
