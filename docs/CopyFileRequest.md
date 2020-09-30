# CopyFileRequest

Request model for FileApi.copy_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**src_path** |**String** |Source file path e.g. '/folder/file.ext' |
**dest_path** |**String** |Destination file path |
**src_storage_name** |**String** |Source storage name |[optional] 
**dest_storage_name** |**String** |Destination storage name |[optional] 
**version_id** |**String** |File version ID to copy |[optional] 

## Example
```ruby
request = CopyFileRequest.new(
    src_path: '/storage/path/to/source/file.ext',
    dest_path: '/storage/path/to/destination/file.ext',
    src_storage_name: 'First Storage',
    dest_storage_name: 'Other Storage')
```
