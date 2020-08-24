# MapiMessageApi

            
<a name="as_email_dto"></a>
# as_email_dto

```ruby
as_email_dto(mapi_message)
```

Converts MAPI message model to EmailDto model             

### Return type

[**EmailDto**](EmailDto.md)

### mapi_message Parameter

See parameter model documentation at [MapiMessageDto](MapiMessageDto.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="as_file"></a>
# as_file

```ruby
as_file(request)
```

Converts MAPI message model to specified format and returns as file.             

### Return type

**file**

### request Parameter

See parameter model documentation at [MapiMessageAsFileRequest](MapiMessageAsFileRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="from_file"></a>
# from_file

```ruby
from_file(request)
```

Converts email file to a MAPI model representation             

### Return type

[**MapiMessageDto**](MapiMessageDto.md)

### request Parameter
```ruby
AsposeEmailCloud::MapiMessageFromFileRequest.new(
    format,
    file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** | File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file** | **File** | File to convert | 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get"></a>
# get

```ruby
get(request)
```

Get MAPI message document.             

### Return type

[**MapiMessageDto**](MapiMessageDto.md)

### request Parameter
```ruby
AsposeEmailCloud::MapiMessageGetRequest.new(
    format,
    file_name,
    folder,
    storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** | Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file_name** | **String** | Email document file name. | 
 **folder** | **String** | Path to folder in storage. | [optional] 
 **storage** | **String** | Storage name. | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="save"></a>
# save

```ruby
save(request)
```

Save MAPI message to storage.             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [MapiMessageSaveRequest](MapiMessageSaveRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

