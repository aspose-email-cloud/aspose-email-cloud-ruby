# CreateFolderRequest

Request model for FolderApi.create_folder

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**path** |**String** |Folder path to create e.g. 'folder_1/folder_2/' |
**storage_name** |**String** |Storage name |[optional] 

## Example
```ruby
request = CreateFolderRequest.new(
    path: '/storage/path/to/new/folder',
    storage_name: 'First Storage')
```
