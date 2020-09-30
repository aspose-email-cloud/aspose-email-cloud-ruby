# ClientAccountGetMultiRequest

Request model for ClientAccountApi.get_multi

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file_name** |**String** |File name on storage |
**folder** |**String** |Folder on storage |[optional] 
**storage** |**String** |Storage name |[optional] 

## Example
```ruby
request = ClientAccountGetMultiRequest.new(
    file_name: 'email.multi.account',
    folder: 'email/account/location/on/storage',
    storage: 'First Storage')
```
