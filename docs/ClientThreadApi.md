# ClientThreadApi

<a name="client_thread_delete"></a>
# **client_thread_delete**
> client_thread_delete(request)

Delete thread by id. All messages from thread will also be deleted.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientThreadDeleteRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientThreadDeleteRequest**](ClientThreadDeleteRequest.md)| Delete email thread request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_thread_get_list"></a>
# **client_thread_get_list**
> client_thread_get_list(request)

Get message threads from folder. All messages are partly fetched (without email body and some other fields).             

### Return type

[**EmailThreadList**](EmailThreadList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientThreadGetListRequestData.new(folder, account, storage=storage, account_storage_folder=account_storage_folder, update_folder_cache=update_folder_cache, messages_cache_limit=messages_cache_limit)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| A folder in email account.              | 
 **account** | **String**| Email account | 
 **storage** | **String**| Storage name where account file located | [optional] 
 **account_storage_folder** | **String**| Folder in storage where account file located | [optional] 
 **update_folder_cache** | **BOOLEAN**| This parameter is only used in accounts with CacheFile. If true - get new messages and update threads cache for given folder. If false, get only threads from cache without any calls to an email account              | [optional] [default to true]
 **messages_cache_limit** | **Integer**| Limit messages cache size if CacheFile is used. Ignored in accounts without limits support              | [optional] [default to 200]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_thread_get_messages"></a>
# **client_thread_get_messages**
> client_thread_get_messages(request)

Get messages from thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             

### Return type

[**EmailList**](EmailList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientThreadGetMessagesRequestData.new(thread_id, account, folder=folder, storage=storage, account_storage_folder=account_storage_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| Thread identifier | 
 **account** | **String**| Email account | 
 **folder** | **String**| Specifies account folder to get thread from              | [optional] 
 **storage** | **String**| Storage name where account file located | [optional] 
 **account_storage_folder** | **String**| Folder in storage where account file located | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_thread_move"></a>
# **client_thread_move**
> client_thread_move(request)

Move thread to another folder.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientThreadMoveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientThreadMoveRequest**](ClientThreadMoveRequest.md)| Move thread request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="client_thread_set_is_read"></a>
# **client_thread_set_is_read**
> client_thread_set_is_read(request)

Mark all messages in thread as read or unread.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ClientThreadSetIsReadRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ClientThreadSetIsReadRequest**](ClientThreadSetIsReadRequest.md)| Email account specifier and IsRead flag. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

