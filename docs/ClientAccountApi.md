# ClientAccountApi

            
<a name="get"></a>
# get

```ruby
get(request)
```

Get email client account from storage.             

### Return type

[**EmailClientAccount**](EmailClientAccount.md)

### request Parameter
```ruby
AsposeEmailCloud::ClientAccountGetRequest.new(
    file_name,
    folder,
    storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String** | File name on storage. | 
 **folder** | **String** | Folder on storage. | [optional] 
 **storage** | **String** | Storage name. | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_multi"></a>
# get_multi

```ruby
get_multi(request)
```

Get email client multi account file (*.multi.account). Will respond error if file extension is not \".multi.account\".             

### Return type

[**EmailClientMultiAccount**](EmailClientMultiAccount.md)

### request Parameter
```ruby
AsposeEmailCloud::ClientAccountGetMultiRequest.new(
    file_name,
    folder,
    storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String** | File name on storage | 
 **folder** | **String** | Folder on storage | [optional] 
 **storage** | **String** | Storage name | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="save"></a>
# save

```ruby
save(request)
```

Create/update email client account file (*.account) with credentials             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [ClientAccountSaveRequest](ClientAccountSaveRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="save_multi"></a>
# save_multi

```ruby
save_multi(request)
```

Create email client multi account file (*.multi.account). Will respond error if file extension is not \".multi.account\".             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [ClientAccountSaveMultiRequest](ClientAccountSaveMultiRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

