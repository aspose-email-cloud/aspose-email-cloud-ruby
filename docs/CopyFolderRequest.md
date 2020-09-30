# CopyFolderRequest

Request model for FolderApi.copy_folder

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**src_path** |**String** |Source folder path e.g. '/src' |
**dest_path** |**String** |Destination folder path e.g. '/dst' |
**src_storage_name** |**String** |Source storage name |[optional] 
**dest_storage_name** |**String** |Destination storage name |[optional] 

## Example
```ruby
request = CopyFolderRequest.new(
    src_path: '/storage/path/to/source/folder',
    dest_path: '/storage/path/to/destination/folder',
    src_storage_name: 'First Storage',
    dest_storage_name: 'Other Storage')
```
