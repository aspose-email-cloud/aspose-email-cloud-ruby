# AsposeEmailCloud::ClientFolderDeleteRequest

Email client delete folder request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**folder** |**String** | Path to folder to delete.              | 

Parent class: [ClientAccountBaseRequest](ClientAccountBaseRequest.md)


## Example
```ruby
client_folder_delete_request = ClientFolderDeleteRequest.new(
  folder: 'INBOX/SubFolder/FolderToDelete',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
