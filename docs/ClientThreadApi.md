# ClientThreadApi

            
<a name="delete"></a>
# delete

```ruby
delete(request)
```

Delete thread by id. All messages from thread will also be deleted.             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [ClientThreadDeleteRequest](ClientThreadDeleteRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_list"></a>
# get_list

```ruby
get_list(request)
```

Get message threads from folder. All messages are partly fetched (without email body and some other fields).             

### Return type

[**EmailThreadList**](EmailThreadList.md)

### request Parameter
```ruby
AsposeEmailCloud::ClientThreadGetListRequest.new(
    folder,
    account,
    storage,
    account_storage_folder,
    update_folder_cache,
    messages_cache_limit)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String** | A folder in email account.              | 
 **account** | **String** | Email account | 
 **storage** | **String** | Storage name where account file located | [optional] 
 **account_storage_folder** | **String** | Folder in storage where account file located | [optional] 
 **update_folder_cache** | **BOOLEAN** | This parameter is only used in accounts with CacheFile. If true - get new messages and update threads cache for given folder. If false, get only threads from cache without any calls to an email account              | [optional] [default to true]
 **messages_cache_limit** | **Integer** | Limit messages cache size if CacheFile is used. Ignored in accounts without limits support              | [optional] [default to 200]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_messages"></a>
# get_messages

```ruby
get_messages(request)
```

Get messages from thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             

### Return type

[**EmailList**](EmailList.md)

### request Parameter
```ruby
AsposeEmailCloud::ClientThreadGetMessagesRequest.new(
    thread_id,
    account,
    folder,
    storage,
    account_storage_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String** | Thread identifier | 
 **account** | **String** | Email account | 
 **folder** | **String** | Specifies account folder to get thread from              | [optional] 
 **storage** | **String** | Storage name where account file located | [optional] 
 **account_storage_folder** | **String** | Folder in storage where account file located | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="move"></a>
# move

```ruby
move(request)
```

Move thread to another folder.             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [ClientThreadMoveRequest](ClientThreadMoveRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="set_is_read"></a>
# set_is_read

```ruby
set_is_read(request)
```

Mark all messages in thread as read or unread.             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [ClientThreadSetIsReadRequest](ClientThreadSetIsReadRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

