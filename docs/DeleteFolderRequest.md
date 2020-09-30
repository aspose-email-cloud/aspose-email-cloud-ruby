# DeleteFolderRequest

Request model for FolderApi.delete_folder

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**path** |**String** |Folder path e.g. '/folder' |
**storage_name** |**String** |Storage name |[optional] 
**recursive** |**BOOLEAN** |Enable to delete folders, subfolders and files |[optional] [default to false]

## Example
```ruby
request = DeleteFolderRequest.new(
    path: '/storage/path/to/folder',
    storage_name: 'First Storage',
    recursive: true)
```
