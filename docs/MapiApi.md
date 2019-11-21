# MapiApi

<a name="add_mapi_attachment"></a>
# **add_mapi_attachment**
> add_mapi_attachment(request)

Add attachment to document

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::AddMapiAttachmentRequestData.new(name, attachment, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment file name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Add attachment request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_mapi"></a>
# **create_mapi**
> create_mapi(request)

Create new document

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateMapiRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Create document request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_mapi_attachment"></a>
# **delete_mapi_attachment**
> delete_mapi_attachment(request)

Remove attachment from document

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteMapiAttachmentRequestData.new(name, attachment, storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment name or index | 
 **storage** | [**StorageFolderLocation**](StorageFolderLocation.md)| Document file storage location info | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_mapi_properties"></a>
# **delete_mapi_properties**
> delete_mapi_properties(request)

Delete document properties

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteMapiPropertiesRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be deleted | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_attachment"></a>
# **get_mapi_attachment**
> get_mapi_attachment(request)

Get document attachment as file stream

### Return type

**File**

### Request Parameters
```ruby
request = AsposeEmailCloud::GetMapiAttachmentRequestData.new(name, attachment, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_attachments"></a>
# **get_mapi_attachments**
> get_mapi_attachments(request)

Get document attachment list

### Return type

[**ListResponseOfString**](ListResponseOfString.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetMapiAttachmentsRequestData.new(name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_list"></a>
# **get_mapi_list**
> get_mapi_list(request)

Get document list from storage folder

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetMapiListRequestData.new(folder=folder, storage=storage, items_per_page=items_per_page, page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_properties"></a>
# **get_mapi_properties**
> get_mapi_properties(request)

Get document properties

### Return type

[**HierarchicalObjectResponse**](HierarchicalObjectResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetMapiPropertiesRequestData.new(name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_mapi_properties"></a>
# **update_mapi_properties**
> update_mapi_properties(request)

Update document properties

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::UpdateMapiPropertiesRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be updated/added | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

