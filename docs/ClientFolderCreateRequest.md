# AsposeEmailCloud::ClientFolderCreateRequest

Email Client create folder request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account_location** |[**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**parent_folder** |**String** | Path to parent folder.              | [optional] 
**folder_name** |**String** | Folder name.              | 

Parent class: [ClientAccountBaseRequest](ClientAccountBaseRequest.md)


## Example
```ruby
client_folder_create_request = ClientFolderCreateRequest.new(
  parent_folder: 'INBOX/SubFolder/ParentFolder',
  folder_name: 'NewFolder',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
