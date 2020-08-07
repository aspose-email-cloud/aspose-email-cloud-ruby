# EmailApi

<a name="email_as_file"></a>
# **email_as_file**
> email_as_file(request)

Converts Email model to specified format and returns as file.             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailAsFileRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**EmailAsFileRequest**](EmailAsFileRequest.md)| Email model and format to convert. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_as_mapi"></a>
# **email_as_mapi**
> email_as_mapi(request)

Converts EmailDto to MapiMessageDto.             

### Return type

[**MapiMessageDto**](MapiMessageDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailAsMapiRequestData.new(email_dto)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_dto** | [**EmailDto**](EmailDto.md)| Email model to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_convert"></a>
# **email_convert**
> email_convert(request)

Converts email document to specified format and returns as file             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailConvertRequestData.new(format, file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_from_file"></a>
# **email_from_file**
> email_from_file(request)

Converts email document to a model representation             

### Return type

[**EmailDto**](EmailDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailFromFileRequestData.new(format, file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_get"></a>
# **email_get**
> email_get(request)

Get email document from storage.             

### Return type

[**EmailDto**](EmailDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailGetRequestData.new(format, file_name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file_name** | **String**| Email document file name. | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_get_as_file"></a>
# **email_get_as_file**
> email_get_as_file(request)

Converts email document from storage to specified format and returns as file             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailGetAsFileRequestData.new(file_name, format, storage=storage, folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name | 
 **format** | **String**| File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_get_list"></a>
# **email_get_list**
> email_get_list(request)

Get email list from storage folder.             

### Return type

[**EmailStorageList**](EmailStorageList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailGetListRequestData.new(format, folder=folder, storage=storage, items_per_page=items_per_page, page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 
 **items_per_page** | **Integer**| Count of items on page. | [optional] [default to 10]
 **page_number** | **Integer**| Page number. | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_save"></a>
# **email_save**
> email_save(request)

Save email document to storage.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailSaveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**EmailSaveRequest**](EmailSaveRequest.md)| Email document create/update request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

