# EmailApi

<a name="add_calendar_attachment"></a>
# **add_calendar_attachment**
> add_calendar_attachment(request)

Adds an attachment to iCalendar file             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::AddCalendarAttachmentRequestData.new(name, attachment, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Calendar file name in storage | 
 **attachment** | **String**| Attachment file name in storage | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Storage name and folder path for calendar and attachment files | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="add_contact_attachment"></a>
# **add_contact_attachment**
> add_contact_attachment(request)

Add attachment to contact document             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::AddContactAttachmentRequestData.new(format, name, attachment, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format Enum, available values: VCard, WebDav, Msg | 
 **name** | **String**| Contact document file name | 
 **attachment** | **String**| Attachment name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Add attachment request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="add_email_attachment"></a>
# **add_email_attachment**
> add_email_attachment(request)

Adds an attachment to Email document             

### Return type

[**EmailDocumentResponse**](EmailDocumentResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AddEmailAttachmentRequestData.new(attachment_name, file_name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_name** | **String**| Attachment file name | 
 **file_name** | **String**| Email document file name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Storage info to specify location of email document and attachment files | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="add_mapi_attachment"></a>
# **add_mapi_attachment**
> add_mapi_attachment(request)

Add attachment to document             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::AddMapiAttachmentRequestData.new(name, attachment, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment file name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Add attachment request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_bcr_ocr"></a>
# **ai_bcr_ocr**
> ai_bcr_ocr(request)

Ocr images             

### Return type

[**ListResponseOfAiBcrOcrData**](ListResponseOfAiBcrOcrData.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiBcrOcrRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiBcrBase64Rq**](AiBcrBase64Rq.md)| Request with base64 images data | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_bcr_ocr_storage"></a>
# **ai_bcr_ocr_storage**
> ai_bcr_ocr_storage(request)

Ocr images from storage             

### Return type

[**ListResponseOfAiBcrOcrData**](ListResponseOfAiBcrOcrData.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiBcrOcrStorageRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiBcrStorageImageRq**](AiBcrStorageImageRq.md)| Request with images located on storage | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_bcr_parse"></a>
# **ai_bcr_parse**
> ai_bcr_parse(request)

Parse images to vCard properties             

### Return type

[**ListResponseOfHierarchicalObject**](ListResponseOfHierarchicalObject.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiBcrParseRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiBcrBase64Rq**](AiBcrBase64Rq.md)| Request with base64 images data | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_bcr_parse_model"></a>
# **ai_bcr_parse_model**
> ai_bcr_parse_model(request)

Parse images to vCard document models             

### Return type

[**ListResponseOfContactDto**](ListResponseOfContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiBcrParseModelRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiBcrBase64Rq**](AiBcrBase64Rq.md)| Request with base64 images data | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_bcr_parse_ocr_data_model"></a>
# **ai_bcr_parse_ocr_data_model**
> ai_bcr_parse_ocr_data_model(request)

Parse OCR data to vCard document models             

### Return type

[**ListResponseOfContactDto**](ListResponseOfContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiBcrParseOcrDataModelRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiBcrParseOcrDataRq**](AiBcrParseOcrDataRq.md)|  | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_bcr_parse_storage"></a>
# **ai_bcr_parse_storage**
> ai_bcr_parse_storage(request)

Parse images from storage to vCard files             

### Return type

[**ListResponseOfStorageFileLocation**](ListResponseOfStorageFileLocation.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiBcrParseStorageRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiBcrParseStorageRq**](AiBcrParseStorageRq.md)| Request with images located on storage | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_complete"></a>
# **ai_name_complete**
> ai_name_complete(request)

The call proposes k most probable names for given starting characters             

### Return type

[**AiNameWeightedVariants**](AiNameWeightedVariants.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameCompleteRequestData.new(name, language=language, location=location, encoding=encoding, script=script, style=style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| A name to complete (required) | 
 **language** | **String**| An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)              | [optional] [default to ]
 **location** | **String**| A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France              | [optional] [default to ]
 **encoding** | **String**| A character encoding name | [optional] [default to ]
 **script** | **String**| A writing system code; starts with the ISO-15924 script name | [optional] [default to ]
 **style** | **String**| Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_expand"></a>
# **ai_name_expand**
> ai_name_expand(request)

Expands a person's name into a list of possible alternatives using options for expanding instructions             

### Return type

[**AiNameWeightedVariants**](AiNameWeightedVariants.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameExpandRequestData.new(name, language=language, location=location, encoding=encoding, script=script, style=style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| A name to format (required) | 
 **language** | **String**| An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)              | [optional] [default to ]
 **location** | **String**| A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France              | [optional] [default to ]
 **encoding** | **String**| A character encoding name | [optional] [default to ]
 **script** | **String**| A writing system code; starts with the ISO-15924 script name | [optional] [default to ]
 **style** | **String**| Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_expand_parsed"></a>
# **ai_name_expand_parsed**
> ai_name_expand_parsed(request)

Expands a person's parsed name into a list of possible alternatives using options for expanding instructions             

### Return type

[**AiNameWeightedVariants**](AiNameWeightedVariants.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameExpandParsedRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiNameParsedRq**](AiNameParsedRq.md)| Parsed name with options | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_format"></a>
# **ai_name_format**
> ai_name_format(request)

Formats a person's name in correct case and name order using options for formatting instructions             

### Return type

[**AiNameFormatted**](AiNameFormatted.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameFormatRequestData.new(name, language=language, location=location, encoding=encoding, script=script, format=format, style=style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| A name to format (required) | 
 **language** | **String**| An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)              | [optional] [default to ]
 **location** | **String**| A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France              | [optional] [default to ]
 **encoding** | **String**| A character encoding name | [optional] [default to ]
 **script** | **String**| A writing system code; starts with the ISO-15924 script name | [optional] [default to ]
 **format** | **String**| Format of the name. Predefined format can be used by ID, or custom format can be specified. Predefined formats:      /format/default/ (&#x3D; &#39;%t%F%m%N%L%p&#39;)     /format/FN+LN/ (&#x3D; &#39;%F%L&#39;)     /format/title+FN+LN/ (&#x3D; &#39;%t%F%L&#39;)     /format/FN+MN+LN/ (&#x3D; &#39;%F%M%N%L&#39;)     /format/title+FN+MN+LN/ (&#x3D; &#39;%t%F%M%N%L&#39;)     /format/FN+MI+LN/ (&#x3D; &#39;%F%m%N%L&#39;)     /format/title+FN+MI+LN/ (&#x3D; &#39;%t%F%m%N%L&#39;)     /format/LN/ (&#x3D; &#39;%L&#39;)     /format/title+LN/ (&#x3D; &#39;%t%L&#39;)     /format/LN+FN+MN/ (&#x3D; &#39;%L,%F%M%N&#39;)     /format/LN+title+FN+MN/ (&#x3D; &#39;%L,%t%F%M%N&#39;)     /format/LN+FN+MI/ (&#x3D; &#39;%L,%F%m%N&#39;)     /format/LN+title+FN+MI/ (&#x3D; &#39;%L,%t%F%m%N&#39;)  Custom format string - custom combination of characters and the next term placeholders:      &#39;%t&#39; - Title (prefix)     &#39;%F&#39; - First name     &#39;%f&#39; - First initial     &#39;%M&#39; - Middle name(s)     &#39;%m&#39; - Middle initial(s)     &#39;%N&#39; - Nickname     &#39;%L&#39; - Last name     &#39;%l&#39; - Last initial     &#39;%p&#39; - Postfix  If no value for format option was provided, its default value is &#39;%t%F%m%N%L%p&#39;              | [optional] [default to ]
 **style** | **String**| Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_format_parsed"></a>
# **ai_name_format_parsed**
> ai_name_format_parsed(request)

Formats a person's parsed name in correct case and name order using options for formatting instructions             

### Return type

[**AiNameFormatted**](AiNameFormatted.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameFormatParsedRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiNameParsedRq**](AiNameParsedRq.md)| Parsed name with options | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_genderize"></a>
# **ai_name_genderize**
> ai_name_genderize(request)

Detect person's gender from name string             

### Return type

[**ListResponseOfAiNameGenderHypothesis**](ListResponseOfAiNameGenderHypothesis.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameGenderizeRequestData.new(name, language=language, location=location, encoding=encoding, script=script, style=style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| A name to parse (required) | 
 **language** | **String**| An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)              | [optional] [default to ]
 **location** | **String**| A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France              | [optional] [default to ]
 **encoding** | **String**| A character encoding name | [optional] [default to ]
 **script** | **String**| A writing system code; starts with the ISO-15924 script name | [optional] [default to ]
 **style** | **String**| Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_genderize_parsed"></a>
# **ai_name_genderize_parsed**
> ai_name_genderize_parsed(request)

Detect person's gender from parsed name             

### Return type

[**ListResponseOfAiNameGenderHypothesis**](ListResponseOfAiNameGenderHypothesis.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameGenderizeParsedRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiNameParsedRq**](AiNameParsedRq.md)| Gender detection request data | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_match"></a>
# **ai_name_match**
> ai_name_match(request)

Compare people's names. Uses options for comparing instructions             

### Return type

[**AiNameMatchResult**](AiNameMatchResult.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameMatchRequestData.new(name, other_name, language=language, location=location, encoding=encoding, script=script, style=style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| A name to match (required) | 
 **other_name** | **String**| Another name to match (required) | 
 **language** | **String**| An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)              | [optional] [default to ]
 **location** | **String**| A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France              | [optional] [default to ]
 **encoding** | **String**| A character encoding name | [optional] [default to ]
 **script** | **String**| A writing system code; starts with the ISO-15924 script name | [optional] [default to ]
 **style** | **String**| Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_match_parsed"></a>
# **ai_name_match_parsed**
> ai_name_match_parsed(request)

Compare people's parsed names and attributes. Uses options for comparing instructions             

### Return type

[**AiNameMatchResult**](AiNameMatchResult.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameMatchParsedRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AiNameParsedMatchRq**](AiNameParsedMatchRq.md)| Parsed names to match | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_parse"></a>
# **ai_name_parse**
> ai_name_parse(request)

Parse name to components             

### Return type

[**ListResponseOfAiNameComponent**](ListResponseOfAiNameComponent.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameParseRequestData.new(name, language=language, location=location, encoding=encoding, script=script, style=style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| A name to parse (required) | 
 **language** | **String**| An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)              | [optional] [default to ]
 **location** | **String**| A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France              | [optional] [default to ]
 **encoding** | **String**| A character encoding name | [optional] [default to ]
 **script** | **String**| A writing system code; starts with the ISO-15924 script name | [optional] [default to ]
 **style** | **String**| Name writing style Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="ai_name_parse_email_address"></a>
# **ai_name_parse_email_address**
> ai_name_parse_email_address(request)

Parse person's name out of an email address             

### Return type

[**ListResponseOfAiNameExtracted**](ListResponseOfAiNameExtracted.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AiNameParseEmailAddressRequestData.new(email_address, language=language, location=location, encoding=encoding, script=script, style=style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**| Email address to parse (required) | 
 **language** | **String**| An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)              | [optional] [default to ]
 **location** | **String**| A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France              | [optional] [default to ]
 **encoding** | **String**| A character encoding name | [optional] [default to ]
 **script** | **String**| A writing system code; starts with the ISO-15924 script name | [optional] [default to ]
 **style** | **String**| Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="append_email_message"></a>
# **append_email_message**
> append_email_message(request)

Adds an email from *.eml file to specified folder in email account             

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AppendEmailMessageRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AppendEmailBaseRequest**](AppendEmailBaseRequest.md)| Append email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="append_email_model_message"></a>
# **append_email_model_message**
> append_email_model_message(request)

Adds an email from model to specified folder in email account             

### Return type

[**ValueResponse**](ValueResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AppendEmailModelMessageRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**AppendEmailModelRq**](AppendEmailModelRq.md)| Append email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="append_mime_message"></a>
# **append_mime_message**
> append_mime_message(request)

Adds an email from MIME to specified folder in email account             

### Return type

[**ValueResponse**](ValueResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AppendMimeMessageRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AppendEmailMimeBaseRequest**](AppendEmailMimeBaseRequest.md)| Append email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="convert_calendar_model_to_alternate"></a>
# **convert_calendar_model_to_alternate**
> convert_calendar_model_to_alternate(request)

Convert iCalendar to AlternateView             

### Return type

[**AlternateView**](AlternateView.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ConvertCalendarModelToAlternateRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**CalendarDtoAlternateRq**](CalendarDtoAlternateRq.md)| iCalendar to AlternateView request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="convert_email"></a>
# **convert_email**
> convert_email(request)

Converts email document to specified format and returns as file             

### Return type

**File**

### Request Parameters
```ruby
request = AsposeEmailCloud::ConvertEmailRequestData.new(format, file)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html | 
 **file** | **File**| File to upload | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="copy_file"></a>
# **copy_file**
> copy_file(request)

Copy file

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CopyFileRequestData.new(src_path, dest_path, src_storage_name=src_storage_name, dest_storage_name=dest_storage_name, version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String**| Destination file path | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to copy | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="copy_folder"></a>
# **copy_folder**
> copy_folder(request)

Copy folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CopyFolderRequestData.new(src_path, dest_path, src_storage_name=src_storage_name, dest_storage_name=dest_storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_calendar"></a>
# **create_calendar**
> create_calendar(request)

Create calendar file             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateCalendarRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Calendar file name in storage | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)|  | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_contact"></a>
# **create_contact**
> create_contact(request)

Create contact document             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateContactRequestData.new(format, name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format Enum, available values: VCard, WebDav, Msg | 
 **name** | **String**| Contact document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Create contact request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_email"></a>
# **create_email**
> create_email(request)

Create an email document             

### Return type

[**EmailDocumentResponse**](EmailDocumentResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateEmailRequestData.new(file_name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name in storage | 
 **request** | [**CreateEmailRequest**](CreateEmailRequest.md)| An email document and optional Storage info to specify where the file should be located              | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_email_folder"></a>
# **create_email_folder**
> create_email_folder(request)

Create new folder in email account             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateEmailFolderRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateFolderBaseRequest**](CreateFolderBaseRequest.md)| Create folder request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_folder"></a>
# **create_folder**
> create_folder(request)

Create the folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateFolderRequestData.new(path, storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_mapi"></a>
# **create_mapi**
> create_mapi(request)

Create new document             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateMapiRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Create document request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_calendar_property"></a>
# **delete_calendar_property**
> delete_calendar_property(request)

Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteCalendarPropertyRequestData.new(name, member_name, index, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **member_name** | **String**| Indexed property name | 
 **index** | **String**| Property index path | 
 **request** | [**StorageFolderLocation**](StorageFolderLocation.md)| Storage detail to specify iCalendar file location | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_contact_property"></a>
# **delete_contact_property**
> delete_contact_property(request)

Delete property from indexed property list             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteContactPropertyRequestData.new(format, name, member_name, index, folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format Enum, available values: VCard, WebDav, Msg | 
 **name** | **String**| Contact document file name | 
 **member_name** | **String**| Indexed property name | 
 **index** | **Integer**| Property index | 
 **folder** | [**StorageFolderLocation**](StorageFolderLocation.md)| Calendar document location in storage information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_email_folder"></a>
# **delete_email_folder**
> delete_email_folder(request)

Delete a folder in email account             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteEmailFolderRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeleteFolderBaseRequest**](DeleteFolderBaseRequest.md)| Delete folder request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_email_message"></a>
# **delete_email_message**
> delete_email_message(request)

Delete message from email account by id             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteEmailMessageRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeleteMessageBaseRequest**](DeleteMessageBaseRequest.md)| Delete message request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_file"></a>
# **delete_file**
> delete_file(request)

Delete file

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteFileRequestData.new(path, storage_name=storage_name, version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to delete | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_folder"></a>
# **delete_folder**
> delete_folder(request)

Delete folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteFolderRequestData.new(path, storage_name=storage_name, recursive=recursive)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_mapi_attachment"></a>
# **delete_mapi_attachment**
> delete_mapi_attachment(request)

Remove attachment from document             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteMapiAttachmentRequestData.new(name, attachment, storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment name or index | 
 **storage** | [**StorageFolderLocation**](StorageFolderLocation.md)| Document file storage location info | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_mapi_properties"></a>
# **delete_mapi_properties**
> delete_mapi_properties(request)

Delete document properties             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteMapiPropertiesRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be deleted | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="discover_email_config"></a>
# **discover_email_config**
> discover_email_config(request)

Discover email accounts by email address. Does not validate discovered accounts.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::DiscoverEmailConfigRequestData.new(address, fast_processing=fast_processing)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Email address | 
 **fast_processing** | **BOOLEAN**| Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned              | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="discover_email_config_oauth"></a>
# **discover_email_config_oauth**
> discover_email_config_oauth(request)

Discover email accounts by email address. Validates discovered accounts using OAuth 2.0.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::DiscoverEmailConfigOauthRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**DiscoverEmailConfigOauth**](DiscoverEmailConfigOauth.md)| Discover email configuration request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="discover_email_config_password"></a>
# **discover_email_config_password**
> discover_email_config_password(request)

Discover email accounts by email address. Validates discovered accounts using login and password.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::DiscoverEmailConfigPasswordRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**DiscoverEmailConfigPassword**](DiscoverEmailConfigPassword.md)| Discover email configuration request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="download_file"></a>
# **download_file**
> download_file(request)

Download file

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::DownloadFileRequestData.new(path, storage_name=storage_name, version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to download | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="fetch_email_message"></a>
# **fetch_email_message**
> fetch_email_message(request)

Fetch message mime from email account             

### Return type

[**MimeResponse**](MimeResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::FetchEmailMessageRequestData.new(message_id, first_account, second_account=second_account, storage=storage, storage_folder=storage_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message identifier | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)              | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="fetch_email_model"></a>
# **fetch_email_model**
> fetch_email_model(request)

Fetch message model from email account             

### Return type

[**EmailDto**](EmailDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::FetchEmailModelRequestData.new(message_id, first_account, second_account=second_account, storage=storage, storage_folder=storage_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message identifier | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)              | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar"></a>
# **get_calendar**
> get_calendar(request)

Get calendar file properties             

### Return type

[**HierarchicalObject**](HierarchicalObject.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetCalendarRequestData.new(name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar_attachment"></a>
# **get_calendar_attachment**
> get_calendar_attachment(request)

Get iCalendar document attachment by name             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::GetCalendarAttachmentRequestData.new(name, attachment, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar_list"></a>
# **get_calendar_list**
> get_calendar_list(request)

Get iCalendar files list in folder on storage             

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetCalendarListRequestData.new(folder, items_per_page, page_number, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | 
 **items_per_page** | **Integer**| Count of items on page | 
 **page_number** | **Integer**| Page number | 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar_model"></a>
# **get_calendar_model**
> get_calendar_model(request)

Get calendar file             

### Return type

[**CalendarDto**](CalendarDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetCalendarModelRequestData.new(name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar_model_as_alternate"></a>
# **get_calendar_model_as_alternate**
> get_calendar_model_as_alternate(request)

Get iCalendar from storage as AlternateView             

### Return type

[**AlternateView**](AlternateView.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetCalendarModelAsAlternateRequestData.new(name, calendar_action, sequence_id=sequence_id, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **calendar_action** | **String**| iCalendar method type Enum, available values: Create, Update, Cancel | 
 **sequence_id** | **String**| The sequence id | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar_model_list"></a>
# **get_calendar_model_list**
> get_calendar_model_list(request)

Get iCalendar list from storage folder             

### Return type

[**CalendarDtoList**](CalendarDtoList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetCalendarModelListRequestData.new(folder, items_per_page=items_per_page, page_number=page_number, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_attachment"></a>
# **get_contact_attachment**
> get_contact_attachment(request)

Get attachment file by name             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::GetContactAttachmentRequestData.new(format, name, attachment, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **name** | **String**| Contact document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_list"></a>
# **get_contact_list**
> get_contact_list(request)

Get contact list from storage folder             

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetContactListRequestData.new(format, folder=folder, storage=storage, items_per_page=items_per_page, page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_model"></a>
# **get_contact_model**
> get_contact_model(request)

Get contact document.             

### Return type

[**ContactDto**](ContactDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetContactModelRequestData.new(format, name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **name** | **String**| Contact document file name. | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_model_list"></a>
# **get_contact_model_list**
> get_contact_model_list(request)

Get contact list from storage folder.             

### Return type

[**ContactDtoList**](ContactDtoList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetContactModelListRequestData.new(format, folder=folder, storage=storage, items_per_page=items_per_page, page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 
 **items_per_page** | **Integer**| Count of items on page. | [optional] [default to 10]
 **page_number** | **Integer**| Page number. | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_properties"></a>
# **get_contact_properties**
> get_contact_properties(request)

Get contact document properties             

### Return type

[**HierarchicalObject**](HierarchicalObject.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetContactPropertiesRequestData.new(format, name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **name** | **String**| Contact document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_disc_usage"></a>
# **get_disc_usage**
> get_disc_usage(request)

Get disc usage

### Return type

[**DiscUsage**](DiscUsage.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetDiscUsageRequestData.new(storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email"></a>
# **get_email**
> get_email(request)

Get email document             

### Return type

[**EmailDocument**](EmailDocument.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailRequestData.new(file_name, storage=storage, folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name in storage | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_as_file"></a>
# **get_email_as_file**
> get_email_as_file(request)

Converts email document from storage to specified format and returns as file             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailAsFileRequestData.new(file_name, format, storage=storage, folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name | 
 **format** | **String**| File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_attachment"></a>
# **get_email_attachment**
> get_email_attachment(request)

Get email attachment by name             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailAttachmentRequestData.new(attachment, file_name, storage=storage, folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment** | **String**| Attachment name | 
 **file_name** | **String**| Email document file name | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_client_account"></a>
# **get_email_client_account**
> get_email_client_account(request)

Get email client account from storage             

### Return type

[**EmailClientAccount**](EmailClientAccount.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailClientAccountRequestData.new(name, folder, storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| File name on storage | 
 **folder** | **String**| Folder on storage | 
 **storage** | **String**| Storage name | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_client_multi_account"></a>
# **get_email_client_multi_account**
> get_email_client_multi_account(request)

Get email client multi account file (*.multi.account). Will respond error if file extension is not \".multi.account\".             

### Return type

[**EmailClientMultiAccount**](EmailClientMultiAccount.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailClientMultiAccountRequestData.new(name, folder, storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| File name on storage | 
 **folder** | **String**| Folder on storage | 
 **storage** | **String**| Storage name | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_model"></a>
# **get_email_model**
> get_email_model(request)

Get email document.             

### Return type

[**EmailDto**](EmailDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailModelRequestData.new(format, name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html | 
 **name** | **String**| Email document file name. | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_model_list"></a>
# **get_email_model_list**
> get_email_model_list(request)

Get email list from storage folder.             

### Return type

[**EmailDtoList**](EmailDtoList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailModelListRequestData.new(format, folder=folder, storage=storage, items_per_page=items_per_page, page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html | 
 **folder** | **String**| Path to folder in storage. | [optional] 
 **storage** | **String**| Storage name. | [optional] 
 **items_per_page** | **Integer**| Count of items on page. | [optional] [default to 10]
 **page_number** | **Integer**| Page number. | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_property"></a>
# **get_email_property**
> get_email_property(request)

Get an email document property by its name             

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailPropertyRequestData.new(property_name, file_name, storage=storage, folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_name** | **String**| A property name | 
 **file_name** | **String**| Email document file name | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_thread"></a>
# **get_email_thread**
> get_email_thread(request)

Get message thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             

### Return type

[**EmailThread**](EmailThread.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailThreadRequestData.new(thread_id, first_account, second_account=second_account, storage=storage, storage_folder=storage_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **thread_id** | **String**| Thread identifier | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)              | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_file_versions"></a>
# **get_file_versions**
> get_file_versions(request)

Get file versions

### Return type

[**FileVersions**](FileVersions.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetFileVersionsRequestData.new(path, storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_files_list"></a>
# **get_files_list**
> get_files_list(request)

Get all files and folders within a folder

### Return type

[**FilesList**](FilesList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetFilesListRequestData.new(path, storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_attachment"></a>
# **get_mapi_attachment**
> get_mapi_attachment(request)

Get document attachment as file stream             

### Return type

**file**

### Request Parameters
```ruby
request = AsposeEmailCloud::GetMapiAttachmentRequestData.new(name, attachment, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_attachments"></a>
# **get_mapi_attachments**
> get_mapi_attachments(request)

Get document attachment list             

### Return type

[**ListResponseOfString**](ListResponseOfString.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetMapiAttachmentsRequestData.new(name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_list"></a>
# **get_mapi_list**
> get_mapi_list(request)

Get document list from storage folder             

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetMapiListRequestData.new(folder=folder, storage=storage, items_per_page=items_per_page, page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_properties"></a>
# **get_mapi_properties**
> get_mapi_properties(request)

Get document properties             

### Return type

[**HierarchicalObjectResponse**](HierarchicalObjectResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetMapiPropertiesRequestData.new(name, folder=folder, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="is_email_address_disposable"></a>
# **is_email_address_disposable**
> is_email_address_disposable(request)

Check email address is disposable             

### Return type

[**ValueTOfBoolean**](ValueTOfBoolean.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::IsEmailAddressDisposableRequestData.new(address)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| An email address to check | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="list_email_folders"></a>
# **list_email_folders**
> list_email_folders(request)

Get folders list in email account             

### Return type

[**ListResponseOfMailServerFolder**](ListResponseOfMailServerFolder.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ListEmailFoldersRequestData.new(first_account, second_account=second_account, storage=storage, storage_folder=storage_folder, parent_folder=parent_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)              | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **parent_folder** | **String**| Folder in which subfolders should be listed | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="list_email_messages"></a>
# **list_email_messages**
> list_email_messages(request)

Get messages from folder, filtered by query             

The query string should have the following view.      The example of a simple expression:       '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.      The number of simple expressions can make a compound one, ex.:     (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3     >,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator      At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message      Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message      Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item      Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once      The field value (<Field value>) can take the following values:     For text fields - any string,     For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\",     For flags (fields of boolean type) - either \"True\", or \"False\"              

### Return type

[**ListResponseOfString**](ListResponseOfString.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ListEmailMessagesRequestData.new(folder, query_string, first_account, second_account=second_account, storage=storage, storage_folder=storage_folder, recursive=recursive)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| A folder in email account | 
 **query_string** | **String**| A MailQuery search string | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)              | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **recursive** | **BOOLEAN**| Specifies that should message be searched in subfolders recursively | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="list_email_models"></a>
# **list_email_models**
> list_email_models(request)

Get messages from folder, filtered by query             

The query string should have the following view.      The example of a simple expression:       '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.      The number of simple expressions can make a compound one, ex.:     (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3     >,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator      At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message      Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message      Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item      Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once      The field value (<Field value>) can take the following values:     For text fields - any string,     For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\",     For flags (fields of boolean type) - either \"True\", or \"False\"              

### Return type

[**ListResponseOfEmailDto**](ListResponseOfEmailDto.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ListEmailModelsRequestData.new(folder, query_string, first_account, second_account=second_account, storage=storage, storage_folder=storage_folder, recursive=recursive)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| A folder in email account | 
 **query_string** | **String**| A MailQuery search string | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)              | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **recursive** | **BOOLEAN**| Specifies that should message be searched in subfolders recursively | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="list_email_threads"></a>
# **list_email_threads**
> list_email_threads(request)

Get message threads from folder. All messages are partly fetched (without email body and other fields)             

### Return type

[**EmailThreadList**](EmailThreadList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ListEmailThreadsRequestData.new(folder, first_account, second_account=second_account, storage=storage, storage_folder=storage_folder, update_folder_cache=update_folder_cache)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| A folder in email account | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (for example, firstAccount could be IMAP, and second one could be SMTP)              | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **update_folder_cache** | **BOOLEAN**| This parameter is only used in accounts with CacheFile. If true - get new messages and update threads cache for given folder. If false, get only threads from cache without any calls to an email account              | [optional] [default to true]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="move_file"></a>
# **move_file**
> move_file(request)

Move file

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::MoveFileRequestData.new(src_path, dest_path, src_storage_name=src_storage_name, dest_storage_name=dest_storage_name, version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to move | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="move_folder"></a>
# **move_folder**
> move_folder(request)

Move folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::MoveFolderRequestData.new(src_path, dest_path, src_storage_name=src_storage_name, dest_storage_name=dest_storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="object_exists"></a>
# **object_exists**
> object_exists(request)

Check if file or folder exists

### Return type

[**ObjectExist**](ObjectExist.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::ObjectExistsRequestData.new(path, storage_name=storage_name, version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_calendar_model"></a>
# **save_calendar_model**
> save_calendar_model(request)

Save iCalendar             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveCalendarModelRequestData.new(name, rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **rq** | [**StorageModelRqOfCalendarDto**](StorageModelRqOfCalendarDto.md)| Calendar properties update request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_contact_model"></a>
# **save_contact_model**
> save_contact_model(request)

Save contact.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveContactModelRequestData.new(format, name, rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format. Enum, available values: VCard, WebDav, Msg | 
 **name** | **String**| Contact document file name. | 
 **rq** | [**StorageModelRqOfContactDto**](StorageModelRqOfContactDto.md)| Create contact request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_email_client_account"></a>
# **save_email_client_account**
> save_email_client_account(request)

Create email client account file (*.account) with any of supported credentials             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveEmailClientAccountRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StorageFileRqOfEmailClientAccount**](StorageFileRqOfEmailClientAccount.md)| Email account information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_email_client_multi_account"></a>
# **save_email_client_multi_account**
> save_email_client_multi_account(request)

Create email client multi account file (*.multi.account). Will respond error if file extension is not \".multi.account\".             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveEmailClientMultiAccountRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**StorageFileRqOfEmailClientMultiAccount**](StorageFileRqOfEmailClientMultiAccount.md)| Email accounts information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_email_model"></a>
# **save_email_model**
> save_email_model(request)

Save email document.             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveEmailModelRequestData.new(format, name, rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| File format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html | 
 **name** | **String**| iCalendar file name in storage. | 
 **rq** | [**StorageModelRqOfEmailDto**](StorageModelRqOfEmailDto.md)| Calendar properties update request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_mail_account"></a>
# **save_mail_account**
> save_mail_account(request)

Create email account file (*.account) with login/password authentication             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveMailAccountRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SaveEmailAccountRequest**](SaveEmailAccountRequest.md)| Email account information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_mail_o_auth_account"></a>
# **save_mail_o_auth_account**
> save_mail_o_auth_account(request)

Create email account file (*.account) with OAuth             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SaveMailOAuthAccountRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SaveOAuthEmailAccountRequest**](SaveOAuthEmailAccountRequest.md)| Email account information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="send_email"></a>
# **send_email**
> send_email(request)

Send an email from *.eml file located on storage             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SendEmailRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendEmailBaseRequest**](SendEmailBaseRequest.md)| Send email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="send_email_mime"></a>
# **send_email_mime**
> send_email_mime(request)

Send an email specified by MIME in request             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SendEmailMimeRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendEmailMimeBaseRequest**](SendEmailMimeBaseRequest.md)| Send email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="send_email_model"></a>
# **send_email_model**
> send_email_model(request)

Send an email specified by model in request             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SendEmailModelRequestData.new(rq)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rq** | [**SendEmailModelRq**](SendEmailModelRq.md)| Send email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="set_email_property"></a>
# **set_email_property**
> set_email_property(request)

Set email document property value             

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::SetEmailPropertyRequestData.new(property_name, file_name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_name** | **String**| A property name that should be changed | 
 **file_name** | **String**| Email document file name | 
 **request** | [**SetEmailPropertyRequest**](SetEmailPropertyRequest.md)| A property that should be changed and optional Storage info to specify where the file located              | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="set_email_read_flag"></a>
# **set_email_read_flag**
> set_email_read_flag(request)

Sets \"Message is read\" flag             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::SetEmailReadFlagRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SetMessageReadFlagAccountBaseRequest**](SetMessageReadFlagAccountBaseRequest.md)| Message is read request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="storage_exists"></a>
# **storage_exists**
> storage_exists(request)

Check if storage exists

### Return type

[**StorageExist**](StorageExist.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::StorageExistsRequestData.new(storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_calendar_properties"></a>
# **update_calendar_properties**
> update_calendar_properties(request)

Update calendar file properties             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::UpdateCalendarPropertiesRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Calendar properties update request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_contact_properties"></a>
# **update_contact_properties**
> update_contact_properties(request)

Update contact document properties             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::UpdateContactPropertiesRequestData.new(format, name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format Enum, available values: VCard, WebDav, Msg | 
 **name** | **String**| Contact document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be updated/added | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_mapi_properties"></a>
# **update_mapi_properties**
> update_mapi_properties(request)

Update document properties             

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::UpdateMapiPropertiesRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be updated/added | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="upload_file"></a>
# **upload_file**
> upload_file(request)

Upload file

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::UploadFileRequestData.new(path, file, storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File**| File to upload | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

