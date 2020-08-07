# MapiCalendarApi

<a name="mapi_calendar_as_calendar_dto"></a>
# **mapi_calendar_as_calendar_dto**
> mapi_calendar_as_calendar_dto(request)

Converts MAPI calendar model to CalendarDto model.             

### Return type

[**CalendarDto**](CalendarDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiCalendarAsCalendarDtoRequestData.new(mapi_calendar_dto)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mapi_calendar_dto** | [**MapiCalendarDto**](MapiCalendarDto.md)| MAPI calendar model to convert. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_calendar_as_file"></a>
# **mapi_calendar_as_file**
> mapi_calendar_as_file(request)

Converts MAPI calendar model to specified format and returns as file.             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiCalendarAsFileRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**MapiCalendarAsFileRequest**](MapiCalendarAsFileRequest.md)| MAPI calendar model to convert. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_calendar_from_file"></a>
# **mapi_calendar_from_file**
> mapi_calendar_from_file(request)

Converts calendar file to a MAPI model representation.             

### Return type

[**MapiCalendarDto**](MapiCalendarDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiCalendarFromFileRequestData.new(file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_calendar_get"></a>
# **mapi_calendar_get**
> mapi_calendar_get(request)

Get MAPI calendar document.             

### Return type

[**MapiCalendarDto**](MapiCalendarDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiCalendarGetRequestData.new(file_name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Calendar file name in storage. | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="mapi_calendar_save"></a>
# **mapi_calendar_save**
> mapi_calendar_save(request)

Save MAPI Calendar to storage.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::MapiCalendarSaveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**MapiCalendarSaveRequest**](MapiCalendarSaveRequest.md)| Calendar create/update request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

