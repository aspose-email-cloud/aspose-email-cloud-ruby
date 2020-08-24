# ClientFolderApi

            
<a name="create"></a>
# create

```ruby
create(request)
```

Create new folder in email account             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [ClientFolderCreateRequest](ClientFolderCreateRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="delete"></a>
# delete

```ruby
delete(request)
```

Delete a folder in email account             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [ClientFolderDeleteRequest](ClientFolderDeleteRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_list"></a>
# get_list

```ruby
get_list(request)
```

Get folders list in email account             

### Return type

[**MailServerFolderList**](MailServerFolderList.md)

### request Parameter
```ruby
AsposeEmailCloud::ClientFolderGetListRequest.new(
    account,
    storage,
    account_storage_folder,
    parent_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String** | Email account | 
 **storage** | **String** | Storage name where account file located | [optional] 
 **account_storage_folder** | **String** | Folder in storage where account file located | [optional] 
 **parent_folder** | **String** | Folder in which subfolders should be listed | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

