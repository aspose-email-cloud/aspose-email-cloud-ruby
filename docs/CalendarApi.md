# CalendarApi

<a name="calendar_as_alternate"></a>
# **calendar_as_alternate**
> calendar_as_alternate(request)

Convert iCalendar to AlternateView             

### Return type

[**AlternateView**](AlternateView.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarAsAlternateRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CalendarAsAlternateRequest**](CalendarAsAlternateRequest.md)| iCalendar to AlternateView request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_as_file"></a>
# **calendar_as_file**
> calendar_as_file(request)

Converts calendar model to specified format and returns as file.             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarAsFileRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CalendarAsFileRequest**](CalendarAsFileRequest.md)| Calendar model and format to convert. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_as_mapi"></a>
# **calendar_as_mapi**
> calendar_as_mapi(request)

Converts CalendarDto to MapiCalendarDto.             

### Return type

[**MapiCalendarDto**](MapiCalendarDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarAsMapiRequestData.new(calendar_dto)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calendar_dto** | [**CalendarDto**](CalendarDto.md)| iCalendar model calendar representation. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_convert"></a>
# **calendar_convert**
> calendar_convert(request)

Converts calendar document to specified format and returns as file.             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarConvertRequestData.new(format, file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| File format. Enum, available values: Ics, Msg | 
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_from_file"></a>
# **calendar_from_file**
> calendar_from_file(request)

Converts calendar document to a model representation.             

### Return type

[**CalendarDto**](CalendarDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarFromFileRequestData.new(file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to convert | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_get"></a>
# **calendar_get**
> calendar_get(request)

Get calendar file from storage.             

### Return type

[**CalendarDto**](CalendarDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarGetRequestData.new(file_name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| iCalendar file name in storage. | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_get_as_alternate"></a>
# **calendar_get_as_alternate**
> calendar_get_as_alternate(request)

Get iCalendar from storage as AlternateView             

### Return type

[**AlternateView**](AlternateView.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarGetAsAlternateRequestData.new(file_name, calendar_action, sequence_id=sequence_id, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| iCalendar file name in storage | 
 **calendar_action** | **String**| iCalendar method type Enum, available values: Create, Update, Cancel | 
 **sequence_id** | **String**| The sequence id | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_get_as_file"></a>
# **calendar_get_as_file**
> calendar_get_as_file(request)

Converts calendar document from storage to specified format and returns as file.             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarGetAsFileRequestData.new(file_name, format, storage=storage, folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Calendar document file name. | 
 **format** | **String**| File format. Enum, available values: Ics, Msg | 
 **storage** | **String**| Storage name. | [optional] 
 **folder** | **String**| Path to folder in storage. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_get_list"></a>
# **calendar_get_list**
> calendar_get_list(request)

Get iCalendar list from storage folder.             

### Return type

[**CalendarStorageList**](CalendarStorageList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarGetListRequestData.new(folder, items_per_page=items_per_page, page_number=page_number, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage. | 
 **items_per_page** | **Integer**| Count of items on page. | [optional] [default to 10]
 **page_number** | **Integer**| Page number. | [optional] [default to 0]
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="calendar_save"></a>
# **calendar_save**
> calendar_save(request)

Save iCalendar             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CalendarSaveRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CalendarSaveRequest**](CalendarSaveRequest.md)| iCalendar create/update request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

