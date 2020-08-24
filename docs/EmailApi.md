# EmailApi

            
<a name="as_file"></a>
# as_file

```ruby
as_file(request)
```

Converts Email model to specified format and returns as file.             

### Return type

**file**

### request Parameter

See parameter model documentation at [EmailAsFileRequest](EmailAsFileRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="as_mapi"></a>
# as_mapi

```ruby
as_mapi(email_dto)
```

Converts EmailDto to MapiMessageDto.             

### Return type

[**MapiMessageDto**](MapiMessageDto.md)

### email_dto Parameter

See parameter model documentation at [EmailDto](EmailDto.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="convert"></a>
# convert

```ruby
convert(request)
```

Converts email document to specified format and returns as file             

### Return type

**file**

### request Parameter
```ruby
AsposeEmailCloud::EmailConvertRequest.new(
    format,
    file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** | File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file** | **File** | File to convert | 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="from_file"></a>
# from_file

```ruby
from_file(request)
```

Converts email document to a model representation             

### Return type

[**EmailDto**](EmailDto.md)

### request Parameter
```ruby
AsposeEmailCloud::EmailFromFileRequest.new(
    format,
    file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** |  Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **file** | **File** | File to convert | 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get"></a>
# get

```ruby
get(request)
```

Get email document from storage.             

### Return type

[**EmailDto**](EmailDto.md)

### request Parameter
```ruby
AsposeEmailCloud::EmailGetRequest.new(
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
            
<a name="get_as_file"></a>
# get_as_file

```ruby
get_as_file(request)
```

Converts email document from storage to specified format and returns as file             

### Return type

**file**

### request Parameter
```ruby
AsposeEmailCloud::EmailGetAsFileRequest.new(
    file_name,
    format,
    storage,
    folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String** | Email document file name | 
 **format** | **String** | File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **storage** | **String** | Storage name | [optional] 
 **folder** | **String** | Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_list"></a>
# get_list

```ruby
get_list(request)
```

Get email list from storage folder.             

### Return type

[**EmailStorageList**](EmailStorageList.md)

### request Parameter
```ruby
AsposeEmailCloud::EmailGetListRequest.new(
    format,
    folder,
    storage,
    items_per_page,
    page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** | Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef | 
 **folder** | **String** | Path to folder in storage. | [optional] 
 **storage** | **String** | Storage name. | [optional] 
 **items_per_page** | **Integer** | Count of items on page. | [optional] [default to 10]
 **page_number** | **Integer** | Page number. | [optional] [default to 0]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="save"></a>
# save

```ruby
save(request)
```

Save email document to storage.             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [EmailSaveRequest](EmailSaveRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

