# MapiContactApi

            
<a name="as_contact_dto"></a>
# as_contact_dto

```ruby
as_contact_dto(mapi_contact_dto)
```

Converts MAPI contact model to ContactDto model.             

### Return type

[**ContactDto**](ContactDto.md)

### mapi_contact_dto Parameter

See parameter model documentation at [MapiContactDto](MapiContactDto.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="as_file"></a>
# as_file

```ruby
as_file(request)
```

Converts MAPI contact model to specified format and returns as file.             

### Return type

**file**

### request Parameter

See parameter model documentation at [MapiContactAsFileRequest](MapiContactAsFileRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="from_file"></a>
# from_file

```ruby
from_file(request)
```

Converts contact file to a MAPI model representation.             

### Return type

[**MapiContactDto**](MapiContactDto.md)

### request Parameter
```ruby
AsposeEmailCloud::MapiContactFromFileRequest.new(
    format,
    file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** | File format Enum, available values: VCard, WebDav, Msg | 
 **file** | **File** | File to convert | 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get"></a>
# get

```ruby
get(request)
```

Get MAPI contact document.             

### Return type

[**MapiContactDto**](MapiContactDto.md)

### request Parameter
```ruby
AsposeEmailCloud::MapiContactGetRequest.new(
    format,
    file_name,
    folder,
    storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** | Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **file_name** | **String** | Contact document file name. | 
 **folder** | **String** | Path to folder in storage. | [optional] 
 **storage** | **String** | Storage name. | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="save"></a>
# save

```ruby
save(request)
```

Save MAPI Contact to storage.             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [MapiContactSaveRequest](MapiContactSaveRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

