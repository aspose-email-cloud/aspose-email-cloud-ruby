# ContactApi

            
<a name="as_file"></a>
# as_file

```ruby
as_file(request)
```

Converts contact model to specified format and returns as file             

### Return type

**file**

### request Parameter

See parameter model documentation at [ContactAsFileRequest](ContactAsFileRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="as_mapi"></a>
# as_mapi

```ruby
as_mapi(contact_dto)
```

Converts ContactDto to MapiContactDto.             

### Return type

[**MapiContactDto**](MapiContactDto.md)

### contact_dto Parameter

See parameter model documentation at [ContactDto](ContactDto.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="convert"></a>
# convert

```ruby
convert(request)
```

Converts contact document to specified format and returns as file             

### Return type

**file**

### request Parameter
```ruby
AsposeEmailCloud::ContactConvertRequest.new(
    to_format,
    from_format,
    file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **to_format** | **String** | File format to convert to Enum, available values: VCard, WebDav, Msg | 
 **from_format** | **String** | File format to convert from Enum, available values: VCard, WebDav, Msg | 
 **file** | **File** | File to convert | 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="from_file"></a>
# from_file

```ruby
from_file(request)
```

Converts contact document to a model representation             

### Return type

[**ContactDto**](ContactDto.md)

### request Parameter
```ruby
AsposeEmailCloud::ContactFromFileRequest.new(
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

Get contact document from storage.             

### Return type

[**ContactDto**](ContactDto.md)

### request Parameter
```ruby
AsposeEmailCloud::ContactGetRequest.new(
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
            
<a name="get_as_file"></a>
# get_as_file

```ruby
get_as_file(request)
```

Converts contact document from storage to specified format and returns as file             

### Return type

**file**

### request Parameter
```ruby
AsposeEmailCloud::ContactGetAsFileRequest.new(
    file_name,
    to_format,
    from_format,
    storage,
    folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String** | Calendar document file name | 
 **to_format** | **String** | File format Enum, available values: VCard, WebDav, Msg | 
 **from_format** | **String** | File format to convert from Enum, available values: VCard, WebDav, Msg | 
 **storage** | **String** | Storage name | [optional] 
 **folder** | **String** | Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="get_list"></a>
# get_list

```ruby
get_list(request)
```

Get contact list from storage folder.             

### Return type

[**ContactStorageList**](ContactStorageList.md)

### request Parameter
```ruby
AsposeEmailCloud::ContactGetListRequest.new(
    format,
    folder,
    storage,
    items_per_page,
    page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String** | Contact document format. Enum, available values: VCard, WebDav, Msg | 
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

Save contact to storage.             

### Return type

nil (empty response body)

### request Parameter

See parameter model documentation at [ContactSaveRequest](ContactSaveRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

