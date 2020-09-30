# DownloadFileRequest

Request model for FileApi.download_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**path** |**String** |File path e.g. '/folder/file.ext' |
**storage_name** |**String** |Storage name |[optional] 
**version_id** |**String** |File version ID to download |[optional] 

## Example
```ruby
request = DownloadFileRequest.new(
    path: '/storage/path/to/file.ext',
    storage_name: 'First Storage')
```
