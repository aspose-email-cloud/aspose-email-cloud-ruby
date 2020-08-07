# AiBcrApi

<a name="ai_bcr_parse"></a>
# **ai_bcr_parse**
> ai_bcr_parse(request)

Parse images to vCard document models             

### Return type

[**ContactList**](ContactList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiBcrParseRequestData.new(file, countries=countries, languages=languages, is_single=is_single)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File to parse | 
 **countries** | **String**| Comma-separated codes of countries. | [optional] [default to ]
 **languages** | **String**| Comma-separated ISO-639 codes of languages (either 639-1 or 639-3; i.e. \&quot;it\&quot; or \&quot;ita\&quot; for Italian); it&#39;s \&quot;\&quot; by default.              | [optional] [default to ]
 **is_single** | **BOOLEAN**| Determines that image contains single VCard or more. | [optional] [default to true]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_bcr_parse_storage"></a>
# **ai_bcr_parse_storage**
> ai_bcr_parse_storage(request)

Parse images from storage to vCard files             

### Return type

[**StorageFileLocationList**](StorageFileLocationList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiBcrParseStorageRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AiBcrParseStorageRequest**](AiBcrParseStorageRequest.md)| Request with images located on storage | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

