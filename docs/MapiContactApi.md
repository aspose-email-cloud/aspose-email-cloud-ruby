# MapiContactApi

<a name="mapi_contact_as_contact_dto"></a>
# **mapi_contact_as_contact_dto**
> mapi_contact_as_contact_dto(request)

Converts MAPI contact model to ContactDto model.             

### Return type

[**ContactDto**](ContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiContactAsContactDtoRequestData.new(mapi_contact_dto)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapi_contact_dto** | [**MapiContactDto**](MapiContactDto.md)| MAPI contact model to convert. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_contact_as_file"></a>
# **mapi_contact_as_file**
> mapi_contact_as_file(request)

Converts MAPI contact model to specified format and returns as file.             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiContactAsFileRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**MapiContactAsFileRequest**](MapiContactAsFileRequest.md)| MAPI contact model to convert. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_contact_from_file"></a>
# **mapi_contact_from_file**
> mapi_contact_from_file(request)

Converts contact file to a MAPI model representation.             

### Return type

[**MapiContactDto**](MapiContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiContactFromFileRequestData.new(format, file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| File format Enum, available values: VCard, WebDav, Msg | 
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_contact_get"></a>
# **mapi_contact_get**
> mapi_contact_get(request)

Get MAPI contact document.             

### Return type

[**MapiContactDto**](MapiContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiContactGetRequestData.new(format, file_name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **file_name** | **String**| Contact document file name. | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_contact_save"></a>
# **mapi_contact_save**
> mapi_contact_save(request)

Save MAPI Contact to storage.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiContactSaveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**MapiContactSaveRequest**](MapiContactSaveRequest.md)| Create/Update contact request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

