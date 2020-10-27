# AsposeEmailCloud::ClientThreadDeleteRequest

Delete email client thread request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**thread_id** |**String** | Thread identifier.              | 
**folder** |**String** | Folder on email server, where thread is stored.              | [optional] 

Parent class: [ClientThreadBaseRequest](ClientThreadBaseRequest.md)


## Example
```ruby
client_thread_delete_request = ClientThreadDeleteRequest.new(
  folder: 'INBOX/SubFolder',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
