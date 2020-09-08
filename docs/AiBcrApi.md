# AiBcrApi

            
<a name="parse"></a>
# parse

```ruby
parse(request)
```

Parse images to vCard document models             

### Return type

[**ContactList**](ContactList.md)

### request Parameter
```ruby
AsposeEmailCloud::AiBcrParseRequest.new(
    file,
    countries,
    languages,
    is_single)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File** | File to parse | 
 **countries** | **String** | Comma-separated codes of countries. | [optional] [default to ]
 **languages** | **String** | Comma-separated ISO-639 codes of languages (either 639-1 or 639-3; i.e. \&quot;it\&quot; or \&quot;ita\&quot; for Italian); it&#39;s \&quot;\&quot; by default.              | [optional] [default to ]
 **is_single** | **BOOLEAN** | Determines that image contains single VCard or more. | [optional] [default to true]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="parse_storage"></a>
# parse_storage

```ruby
parse_storage(request)
```

Parse images from storage to vCard files             

### Return type

[**StorageFileLocationList**](StorageFileLocationList.md)

### request Parameter

See parameter model documentation at [AiBcrParseStorageRequest](AiBcrParseStorageRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

