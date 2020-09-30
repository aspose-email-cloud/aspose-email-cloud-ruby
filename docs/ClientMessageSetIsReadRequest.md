# AsposeEmailCloud::ClientMessageSetIsReadRequest

Email client mark message is read/unread request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**message_id** |**String** | Message identifier.              | 
**is_read** |**BOOLEAN** | Message is read flag.              | 

Parent class: [ClientMessageBaseRequest](ClientMessageBaseRequest.md)


## Example
```ruby
client_message_set_is_read_request = ClientMessageSetIsReadRequest.new(
  is_read: true,
  message_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
