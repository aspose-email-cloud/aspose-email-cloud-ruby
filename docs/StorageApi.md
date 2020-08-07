# StorageApi

<a name="get_disc_usage"></a>
# **get_disc_usage**
> get_disc_usage(request)

Get disc usage

### Return type

[**DiscUsage**](DiscUsage.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetDiscUsageRequestData.new(storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_file_versions"></a>
# **get_file_versions**
> get_file_versions(request)

Get file versions

### Return type

[**FileVersions**](FileVersions.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetFileVersionsRequestData.new(path, storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="object_exists"></a>
# **object_exists**
> object_exists(request)

Check if file or folder exists

### Return type

[**ObjectExist**](ObjectExist.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ObjectExistsRequestData.new(path, storage_name=storage_name, version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="storage_exists"></a>
# **storage_exists**
> storage_exists(request)

Check if storage exists

### Return type

[**StorageExist**](StorageExist.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::StorageExistsRequestData.new(storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

