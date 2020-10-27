# ClientThreadGetMessagesRequest

Request model for ClientThreadApi.get_messages

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**thread_id** |**String** |Thread identifier |
**account** |**String** |Email account |
**folder** |**String** |Specifies account folder to get thread from              |[optional] 
**storage** |**String** |Storage name where account file located |[optional] 
**account_storage_folder** |**String** |Folder in storage where account file located |[optional] 

## Example
```ruby
request = ClientThreadGetMessagesRequest.new(
    thread_id: '5',
    account: 'email.account',
    folder: 'INBOX',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage')
```
