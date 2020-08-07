# FolderApi

<a name="copy_folder"></a>
# **copy_folder**
> copy_folder(request)

Copy folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CopyFolderRequestData.new(src_path, dest_path, src_storage_name=src_storage_name, dest_storage_name=dest_storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_folder"></a>
# **create_folder**
> create_folder(request)

Create the folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateFolderRequestData.new(path, storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_folder"></a>
# **delete_folder**
> delete_folder(request)

Delete folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteFolderRequestData.new(path, storage_name=storage_name, recursive=recursive)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_files_list"></a>
# **get_files_list**
> get_files_list(request)

Get all files and folders within a folder

### Return type

[**FilesList**](FilesList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetFilesListRequestData.new(path, storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="move_folder"></a>
# **move_folder**
> move_folder(request)

Move folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::MoveFolderRequestData.new(src_path, dest_path, src_storage_name=src_storage_name, dest_storage_name=dest_storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

