# AsposeEmailCloud::ClientMessageMoveRequest

Email client move message request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**message_id** |**String** | Message identifier.              | 
**source_folder** |**String** | Folder to move message from.              | [optional] 
**destination_folder** |**String** | Folder to move message to.              | 

Parent class: [ClientMessageBaseRequest](ClientMessageBaseRequest.md)


## Example
```ruby
client_message_move_request = ClientMessageMoveRequest.new(
  source_folder: 'INBOX',
  destination_folder: 'INBOX/SubFolder',
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
