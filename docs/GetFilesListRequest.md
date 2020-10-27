# GetFilesListRequest

Request model for FolderApi.get_files_list

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**path** |**String** |Folder path e.g. '/folder' |
**storage_name** |**String** |Storage name |[optional] 

## Example
```ruby
request = GetFilesListRequest.new(
    path: '/storage/path/to/folder',
    storage_name: 'First Storage')
```
