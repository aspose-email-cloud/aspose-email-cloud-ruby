# ObjectExistsRequest

Request model for StorageApi.object_exists

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**path** |**String** |File or folder path e.g. '/file.ext' or '/folder' |
**storage_name** |**String** |Storage name |[optional] 
**version_id** |**String** |File version ID |[optional] 

## Example
```ruby
request = ObjectExistsRequest.new(
    path: '/storage/path/to/folder/or/file.ext',
    storage_name: 'First Storage')
```
