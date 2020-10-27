# AsposeEmailCloud::ClientMessageDeleteRequest

Email client delete message request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**message_id** |**String** | Message identifier.              | 
**folder** |**String** | Folder to delete message from.              | [optional] 

Parent class: [ClientMessageBaseRequest](ClientMessageBaseRequest.md)


## Example
```ruby
client_message_delete_request = ClientMessageDeleteRequest.new(
  folder: 'INBOX',
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
