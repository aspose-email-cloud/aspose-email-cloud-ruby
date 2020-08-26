# FileApi

            
<a name="copy_file"></a>
# copy_file

```ruby
copy_file(request)
```



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
 **src_path** | **String** |  | 
 **dest_path** | **String** |  | 
 **src_storage_name** | **String** |  | [optional] 
 **dest_storage_name** | **String** |  | [optional] 
 **version_id** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="delete_file"></a>
# delete_file

```ruby
delete_file(request)
```



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
 **path** | **String** |  | 
 **storage_name** | **String** |  | [optional] 
 **version_id** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="download_file"></a>
# download_file

```ruby
download_file(request)
```



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
 **path** | **String** |  | 
 **storage_name** | **String** |  | [optional] 
 **version_id** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="move_file"></a>
# move_file

```ruby
move_file(request)
```



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
 **src_path** | **String** |  | 
 **dest_path** | **String** |  | 
 **src_storage_name** | **String** |  | [optional] 
 **dest_storage_name** | **String** |  | [optional] 
 **version_id** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="upload_file"></a>
# upload_file

```ruby
upload_file(request)
```



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
 **path** | **String** |  | 
 **file** | **File** | File to upload | 
 **storage_name** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

