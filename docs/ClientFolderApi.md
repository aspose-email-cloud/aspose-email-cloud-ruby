# ClientFolderApi

<a name="client_folder_create"></a>
# **client_folder_create**
> client_folder_create(request)

Create new folder in email account             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientFolderCreateRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientFolderCreateRequest**](ClientFolderCreateRequest.md)| Create folder request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_folder_delete"></a>
# **client_folder_delete**
> client_folder_delete(request)

Delete a folder in email account             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientFolderDeleteRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientFolderDeleteRequest**](ClientFolderDeleteRequest.md)| Delete folder request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_folder_get_list"></a>
# **client_folder_get_list**
> client_folder_get_list(request)

Get folders list in email account             

### Return type

[**MailServerFolderList**](MailServerFolderList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientFolderGetListRequestData.new(account, storage=storage, account_storage_folder=account_storage_folder, parent_folder=parent_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Email account | 
 **storage** | **String**| Storage name where account file located | [optional] 
 **account_storage_folder** | **String**| Folder in storage where account file located | [optional] 
 **parent_folder** | **String**| Folder in which subfolders should be listed | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

