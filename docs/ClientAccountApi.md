# ClientAccountApi

<a name="client_account_get"></a>
# **client_account_get**
> client_account_get(request)

Get email client account from storage.             

### Return type

[**EmailClientAccount**](EmailClientAccount.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientAccountGetRequestData.new(file_name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| File name on storage. | 
 **folder** | **String**| Folder on storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_account_get_multi"></a>
# **client_account_get_multi**
> client_account_get_multi(request)

Get email client multi account file (*.multi.account). Will respond error if file extension is not \".multi.account\".             

### Return type

[**EmailClientMultiAccount**](EmailClientMultiAccount.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientAccountGetMultiRequestData.new(file_name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| File name on storage | 
 **folder** | **String**| Folder on storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_account_save"></a>
# **client_account_save**
> client_account_save(request)

Create/update email client account file (*.account) with credentials             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientAccountSaveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientAccountSaveRequest**](ClientAccountSaveRequest.md)| Email account information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_account_save_multi"></a>
# **client_account_save_multi**
> client_account_save_multi(request)

Create email client multi account file (*.multi.account). Will respond error if file extension is not \".multi.account\".             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientAccountSaveMultiRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientAccountSaveMultiRequest**](ClientAccountSaveMultiRequest.md)| Email accounts information. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

