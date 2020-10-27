# ClientFolderGetListRequest

Request model for ClientFolderApi.get_list

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account** |**String** |Email account |
**storage** |**String** |Storage name where account file located |[optional] 
**account_storage_folder** |**String** |Folder in storage where account file located |[optional] 
**parent_folder** |**String** |Folder in which subfolders should be listed |[optional] 

## Example
```ruby
request = ClientFolderGetListRequest.new(
    account: 'email.multi.account',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    parent_folder: 'INBOX')
```
