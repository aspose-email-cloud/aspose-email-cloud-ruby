# ContactApi

<a name="contact_as_file"></a>
# **contact_as_file**
> contact_as_file(request)

Converts contact model to specified format and returns as file             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::ContactAsFileRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ContactAsFileRequest**](ContactAsFileRequest.md)| Contact model and format to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="contact_as_mapi"></a>
# **contact_as_mapi**
> contact_as_mapi(request)

Converts ContactDto to MapiContactDto.             

### Return type

[**MapiContactDto**](MapiContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ContactAsMapiRequestData.new(contact_dto)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_dto** | [**ContactDto**](ContactDto.md)| Contact model to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="contact_convert"></a>
# **contact_convert**
> contact_convert(request)

Converts contact document to specified format and returns as file             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::ContactConvertRequestData.new(to_format, from_format, file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to_format** | **String**| File format to convert to Enum, available values: VCard, WebDav, Msg | 
 **from_format** | **String**| File format to convert from Enum, available values: VCard, WebDav, Msg | 
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="contact_from_file"></a>
# **contact_from_file**
> contact_from_file(request)

Converts contact document to a model representation             

### Return type

[**ContactDto**](ContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ContactFromFileRequestData.new(format, file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| File format Enum, available values: VCard, WebDav, Msg | 
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="contact_get"></a>
# **contact_get**
> contact_get(request)

Get contact document from storage.             

### Return type

[**ContactDto**](ContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ContactGetRequestData.new(format, file_name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **file_name** | **String**| Contact document file name. | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="contact_get_as_file"></a>
# **contact_get_as_file**
> contact_get_as_file(request)

Converts contact document from storage to specified format and returns as file             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::ContactGetAsFileRequestData.new(file_name, to_format, from_format, storage=storage, folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Calendar document file name | 
 **to_format** | **String**| File format Enum, available values: VCard, WebDav, Msg | 
 **from_format** | **String**| File format to convert from Enum, available values: VCard, WebDav, Msg | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="contact_get_list"></a>
# **contact_get_list**
> contact_get_list(request)

Get contact list from storage folder.             

### Return type

[**ContactStorageList**](ContactStorageList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ContactGetListRequestData.new(format, folder=folder, storage=storage, items_per_page=items_per_page, page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 
 **items_per_page** | **Integer**| Count of items on page. | [optional] [default to 10]
 **page_number** | **Integer**| Page number. | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="contact_save"></a>
# **contact_save**
> contact_save(request)

Save contact to storage.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::ContactSaveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**ContactSaveRequest**](ContactSaveRequest.md)| Create/Update contact request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

