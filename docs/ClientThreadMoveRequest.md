# AsposeEmailCloud::ClientThreadMoveRequest

Email client move thread request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**thread_id** |**String** | Thread identifier.              | 
**destination_folder** |**String** | Email account folder to move thread to.              | 

Parent class: [ClientThreadBaseRequest](ClientThreadBaseRequest.md)


## Example
```ruby
client_thread_move_request = ClientThreadMoveRequest.new(
  destination_folder: 'INBOX/SubFolder',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
