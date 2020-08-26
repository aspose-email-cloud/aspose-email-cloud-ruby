# StorageApi

            
<a name="get_disc_usage"></a>
# get_disc_usage

```ruby
get_disc_usage(request)
```



### Return type

[**DiscUsage**](DiscUsage.md)

### request Parameter
```ruby
AsposeEmailCloud::GetDiscUsageRequest.new(
    storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_file_versions"></a>
# get_file_versions

```ruby
get_file_versions(request)
```



### Return type

[**FileVersions**](FileVersions.md)

### request Parameter
```ruby
AsposeEmailCloud::GetFileVersionsRequest.new(
    path,
    storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String** |  | 
 **storage_name** | **String** |  | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="object_exists"></a>
# object_exists

```ruby
object_exists(request)
```



### Return type

[**ObjectExist**](ObjectExist.md)

### request Parameter
```ruby
AsposeEmailCloud::ObjectExistsRequest.new(
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
            
<a name="exists"></a>
# exists

```ruby
exists(request)
```



### Return type

[**StorageExist**](StorageExist.md)

### request Parameter
```ruby
AsposeEmailCloud::StorageExistsRequest.new(
    storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String** |  | 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

