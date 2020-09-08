# FileApi

            
<a name="copy_file"></a>
# copy_file

```ruby
copy_file(request)
```

Copy file

### Return type

nil (empty response body)

### request Parameter
```ruby
AsposeEmailCloud::CopyFileRequest.new(
    src_path,
    dest_path,
    src_storage_name,
    dest_storage_name,
    version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String** | Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String** | Destination file path | 
 **src_storage_name** | **String** | Source storage name | [optional] 
 **dest_storage_name** | **String** | Destination storage name | [optional] 
 **version_id** | **String** | File version ID to copy | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="delete_file"></a>
# delete_file

```ruby
delete_file(request)
```

Delete file

### Return type

nil (empty response body)

### request Parameter
```ruby
AsposeEmailCloud::DeleteFileRequest.new(
    path,
    storage_name,
    version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String** | File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String** | Storage name | [optional] 
 **version_id** | **String** | File version ID to delete | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="download_file"></a>
# download_file

```ruby
download_file(request)
```

Download file

### Return type

**file**

### request Parameter
```ruby
AsposeEmailCloud::DownloadFileRequest.new(
    path,
    storage_name,
    version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String** | File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String** | Storage name | [optional] 
 **version_id** | **String** | File version ID to download | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="move_file"></a>
# move_file

```ruby
move_file(request)
```

Move file

### Return type

nil (empty response body)

### request Parameter
```ruby
AsposeEmailCloud::MoveFileRequest.new(
    src_path,
    dest_path,
    src_storage_name,
    dest_storage_name,
    version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String** | Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String** | Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String** | Source storage name | [optional] 
 **dest_storage_name** | **String** | Destination storage name | [optional] 
 **version_id** | **String** | File version ID to move | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="upload_file"></a>
# upload_file

```ruby
upload_file(request)
```

Upload file

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### request Parameter
```ruby
AsposeEmailCloud::UploadFileRequest.new(
    path,
    file,
    storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String** | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File** | File to upload | 
 **storage_name** | **String** | Storage name | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

