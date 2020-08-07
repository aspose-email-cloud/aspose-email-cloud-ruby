# MapiMessageApi

<a name="mapi_message_as_email_dto"></a>
# **mapi_message_as_email_dto**
> mapi_message_as_email_dto(request)

Converts MAPI message model to EmailDto model             

### Return type

[**EmailDto**](EmailDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiMessageAsEmailDtoRequestData.new(mapi_message)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapi_message** | [**MapiMessageDto**](MapiMessageDto.md)| MAPI message model to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_message_as_file"></a>
# **mapi_message_as_file**
> mapi_message_as_file(request)

Converts MAPI message model to specified format and returns as file.             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiMessageAsFileRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**MapiMessageAsFileRequest**](MapiMessageAsFileRequest.md)| MAPI message model to convert. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_message_from_file"></a>
# **mapi_message_from_file**
> mapi_message_from_file(request)

Converts email file to a MAPI model representation             

### Return type

[**MapiMessageDto**](MapiMessageDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiMessageFromFileRequestData.new(format, file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_message_get"></a>
# **mapi_message_get**
> mapi_message_get(request)

Get MAPI message document.             

### Return type

[**MapiMessageDto**](MapiMessageDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiMessageGetRequestData.new(format, file_name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file_name** | **String**| Email document file name. | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_message_save"></a>
# **mapi_message_save**
> mapi_message_save(request)

Save MAPI message to storage.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiMessageSaveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**MapiMessageSaveRequest**](MapiMessageSaveRequest.md)| Message create/update request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

