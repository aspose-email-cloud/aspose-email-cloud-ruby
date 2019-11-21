# ContactApi

<a name="add_contact_attachment"></a>
# **add_contact_attachment**
> add_contact_attachment(request)

Add attachment to contact document

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::AddContactAttachmentRequestData.new(format, name, attachment, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **attachment** | **String**| Attachment name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Add attachment request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_contact"></a>
# **create_contact**
> create_contact(request)

Create contact document

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateContactRequestData.new(format, name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Create contact request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_contact_property"></a>
# **delete_contact_property**
> delete_contact_property(request)

Delete property from indexed property list

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteContactPropertyRequestData.new(format, name, member_name, index, folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **member_name** | **String**| Indexed property name | 
 **index** | **Integer**| Property index | 
 **folder** | [**StorageFolderLocation**](StorageFolderLocation.md)| Calendar document location in storage information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_attachment"></a>
# **get_contact_attachment**
> get_contact_attachment(request)

Get attachment file by name

### Return type

**File**

### Request Parameters
```ruby
request = AsposeEmailCloud::GetContactAttachmentRequestData.new(format, name, attachment, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_list"></a>
# **get_contact_list**
> get_contact_list(request)

Get contact list from storage folder

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetContactListRequestData.new(format, folder=folder, storage=storage, items_per_page=items_per_page, page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_properties"></a>
# **get_contact_properties**
> get_contact_properties(request)

Get contact document properties

### Return type

[**HierarchicalObject**](HierarchicalObject.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetContactPropertiesRequestData.new(format, name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_contact_properties"></a>
# **update_contact_properties**
> update_contact_properties(request)

Update contact document properties

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::UpdateContactPropertiesRequestData.new(format, name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be updated/added | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

