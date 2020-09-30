# AsposeEmailCloud::ClientThreadSetIsReadRequest

Mark thread messages as read or unread request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**thread_id** |**String** | Thread identifier.              | 
**is_read** |**BOOLEAN** | Message is read flag.              | 
**folder** |**String** | Folder on email server, where thread is stored.              | [optional] 

Parent class: [ClientThreadBaseRequest](ClientThreadBaseRequest.md)


## Example
```ruby
client_thread_set_is_read_request = ClientThreadSetIsReadRequest.new(
  is_read: true,
  folder: 'INBOX',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
