# MapiCalendarApi

            
<a name="as_calendar_dto"></a>
# as_calendar_dto

```ruby
as_calendar_dto(mapi_calendar_dto)
```

Converts MAPI calendar model to CalendarDto model.             

### Return type

[**CalendarDto**](CalendarDto.md)

### mapi_calendar_dto Parameter

See parameter model documentation at [MapiCalendarDto](MapiCalendarDto.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="as_file"></a>
# as_file

```ruby
as_file(request)
```

Converts MAPI calendar model to specified format and returns as file.             

### Return type

**file**

### request Parameter

See parameter model documentation at [MapiCalendarAsFileRequest](MapiCalendarAsFileRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="from_file"></a>
# from_file

```ruby
from_file(request)
```

Converts calendar file to a MAPI model representation.             

### Return type

[**MapiCalendarDto**](MapiCalendarDto.md)

### request Parameter
```ruby
AsposeEmailCloud::MapiCalendarFromFileRequest.new(
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

Get MAPI calendar document.             

### Return type

[**MapiCalendarDto**](MapiCalendarDto.md)

### request Parameter
```ruby
AsposeEmailCloud::MapiCalendarGetRequest.new(
    file_name,
    folder,
    storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String** | Calendar file name in storage. | 
 **folder** | **String** | Path to folder in storage. | [optional] 
 **storage** | **String** | Storage name. | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="save"></a>
# save

```ruby
save(request)
```

Save MAPI Calendar to storage.             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [MapiCalendarSaveRequest](MapiCalendarSaveRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

