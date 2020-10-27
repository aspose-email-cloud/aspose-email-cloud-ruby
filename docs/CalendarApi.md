# CalendarApi

            
<a name="as_alternate"></a>
# as_alternate

```ruby
as_alternate(request)
```

Convert iCalendar to AlternateView             

### Return type

[**AlternateView**](AlternateView.md)

### request Parameter

See parameter model documentation at [CalendarAsAlternateRequest](CalendarAsAlternateRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="as_file"></a>
# as_file

```ruby
as_file(request)
```

Converts calendar model to specified format and returns as file.             

### Return type

**file**

### request Parameter

See parameter model documentation at [CalendarAsFileRequest](CalendarAsFileRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="as_mapi"></a>
# as_mapi

```ruby
as_mapi(calendar_dto)
```

Converts CalendarDto to MapiCalendarDto.             

### Return type

[**MapiCalendarDto**](MapiCalendarDto.md)

### calendar_dto Parameter

See parameter model documentation at [CalendarDto](CalendarDto.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="convert"></a>
# convert

```ruby
convert(request)
```

Converts calendar document to specified format and returns as file.             

### Return type

**file**

### request Parameter
```ruby
AsposeEmailCloud::CalendarConvertRequest.new(
    format,
    file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** | File format. Enum, available values: Ics, Msg | 
 **file** | **File** | File to convert | 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="from_file"></a>
# from_file

```ruby
from_file(request)
```

Converts calendar document to a model representation.             

### Return type

[**CalendarDto**](CalendarDto.md)

### request Parameter
```ruby
AsposeEmailCloud::CalendarFromFileRequest.new(
    file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File** | File to convert | 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get"></a>
# get

```ruby
get(request)
```

Get calendar file from storage.             

### Return type

[**CalendarDto**](CalendarDto.md)

### request Parameter
```ruby
AsposeEmailCloud::CalendarGetRequest.new(
    file_name,
    folder,
    storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String** | iCalendar file name in storage. | 
 **folder** | **String** | Path to folder in storage. | [optional] 
 **storage** | **String** | Storage name. | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_as_alternate"></a>
# get_as_alternate

```ruby
get_as_alternate(request)
```

Get iCalendar from storage as AlternateView             

### Return type

[**AlternateView**](AlternateView.md)

### request Parameter
```ruby
AsposeEmailCloud::CalendarGetAsAlternateRequest.new(
    file_name,
    calendar_action,
    sequence_id,
    folder,
    storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String** | iCalendar file name in storage | 
 **calendar_action** | **String** | iCalendar method type Enum, available values: Create, Update, Cancel | 
 **sequence_id** | **String** | The sequence id | [optional] 
 **folder** | **String** | Path to folder in storage | [optional] 
 **storage** | **String** | Storage name | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_as_file"></a>
# get_as_file

```ruby
get_as_file(request)
```

Converts calendar document from storage to specified format and returns as file.             

### Return type

**file**

### request Parameter
```ruby
AsposeEmailCloud::CalendarGetAsFileRequest.new(
    file_name,
    format,
    storage,
    folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String** | Calendar document file name. | 
 **format** | **String** | File format. Enum, available values: Ics, Msg | 
 **storage** | **String** | Storage name. | [optional] 
 **folder** | **String** | Path to folder in storage. | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_list"></a>
# get_list

```ruby
get_list(request)
```

Get iCalendar list from storage folder.             

### Return type

[**CalendarStorageList**](CalendarStorageList.md)

### request Parameter
```ruby
AsposeEmailCloud::CalendarGetListRequest.new(
    folder,
    items_per_page,
    page_number,
    storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String** | Path to folder in storage. | 
 **items_per_page** | **Integer** | Count of items on page. | [optional] [default to 10]
 **page_number** | **Integer** | Page number. | [optional] [default to 0]
 **storage** | **String** | Storage name. | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="save"></a>
# save

```ruby
save(request)
```

Save iCalendar             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [CalendarSaveRequest](CalendarSaveRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

