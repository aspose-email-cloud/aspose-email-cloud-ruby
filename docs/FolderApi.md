# FolderApi

            
<a name="copy_folder"></a>
# copy_folder

```ruby
copy_folder(request)
```



### Return type

nil (empty response body)

### request Parameter
```ruby
AsposeEmailCloud::CopyFolderRequest.new(
    src_path,
    dest_path,
    src_storage_name,
    dest_storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String** |  | 
 **dest_path** | **String** |  | 
 **src_storage_name** | **String** |  | [optional] 
 **dest_storage_name** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="create_folder"></a>
# create_folder

```ruby
create_folder(request)
```



### Return type

nil (empty response body)

### request Parameter
```ruby
AsposeEmailCloud::CreateFolderRequest.new(
    path,
    storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String** |  | 
 **storage_name** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="delete_folder"></a>
# delete_folder

```ruby
delete_folder(request)
```



### Return type

nil (empty response body)

### request Parameter
```ruby
AsposeEmailCloud::DeleteFolderRequest.new(
    path,
    storage_name,
    recursive)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String** |  | 
 **storage_name** | **String** |  | [optional] 
 **recursive** | **BOOLEAN** |  | [optional] [default to false]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_files_list"></a>
# get_files_list

```ruby
get_files_list(request)
```



### Return type

[**FilesList**](FilesList.md)

### request Parameter
```ruby
AsposeEmailCloud::GetFilesListRequest.new(
    path,
    storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String** |  | 
 **storage_name** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="move_folder"></a>
# move_folder

```ruby
move_folder(request)
```



### Return type

nil (empty response body)

### request Parameter
```ruby
AsposeEmailCloud::MoveFolderRequest.new(
    src_path,
    dest_path,
    src_storage_name,
    dest_storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String** |  | 
 **dest_path** | **String** |  | 
 **src_storage_name** | **String** |  | [optional] 
 **dest_storage_name** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

