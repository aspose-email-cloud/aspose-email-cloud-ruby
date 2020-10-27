# ClientThreadGetListRequest

Request model for ClientThreadApi.get_list

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**folder** |**String** |A folder in email account.              |
**account** |**String** |Email account |
**storage** |**String** |Storage name where account file located |[optional] 
**account_storage_folder** |**String** |Folder in storage where account file located |[optional] 
**update_folder_cache** |**BOOLEAN** |This parameter is only used in accounts with CacheFile. If true - get new messages and update threads cache for given folder. If false, get only threads from cache without any calls to an email account              |[optional] [default to true]
**messages_cache_limit** |**Integer** |Limit messages cache size if CacheFile is used. Ignored in accounts without limits support              |[optional] [default to 200]

## Example
```ruby
request = ClientThreadGetListRequest.new(
    folder: 'INBOX/SubFolder',
    account: 'email.account',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage')
```
