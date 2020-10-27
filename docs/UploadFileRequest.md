# UploadFileRequest

Request model for FileApi.upload_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**path** |**String** |Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              |
**file** |**File** |File to upload |
**storage_name** |**String** |Storage name |[optional] 

## Example
```ruby
request = UploadFileRequest.new(
    path: '/storage/path/to/file.ext',
    file: File.new('/local/file/system/path/to/file.ext'),
    storage_name: 'First Storage')
```
