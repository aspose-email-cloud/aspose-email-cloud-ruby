# GetFileVersionsRequest

Request model for StorageApi.get_file_versions

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**path** |**String** |File path e.g. '/file.ext' |
**storage_name** |**String** |Storage name |[optional] 

## Example
```ruby
request = GetFileVersionsRequest.new(
    path: '/storage/path/to/file.ext',
    storage_name: 'First Storage')
```
