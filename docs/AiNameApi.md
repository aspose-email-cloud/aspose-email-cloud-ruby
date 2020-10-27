# AiNameApi

            
<a name="complete"></a>
# complete

```ruby
complete(request)
```

The call proposes k most probable names for given starting characters.             

### Return type

[**AiNameWeightedVariants**](AiNameWeightedVariants.md)

### request Parameter
```ruby
AsposeEmailCloud::AiNameCompleteRequest.new(
    name,
    language,
    location,
    encoding,
    script,
    style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | A name to complete. | 
 **language** | **String** | An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).              | [optional] [default to ]
 **location** | **String** | A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.              | [optional] [default to ]
 **encoding** | **String** | A character encoding name. | [optional] [default to ]
 **script** | **String** | A writing system code; starts with the ISO-15924 script name. | [optional] [default to ]
 **style** | **String** | Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="expand"></a>
# expand

```ruby
expand(request)
```

Expands a person's name into a list of possible alternatives using options for expanding instructions.             

### Return type

[**AiNameWeightedVariants**](AiNameWeightedVariants.md)

### request Parameter
```ruby
AsposeEmailCloud::AiNameExpandRequest.new(
    name,
    language,
    location,
    encoding,
    script,
    style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | A name to expand. | 
 **language** | **String** | An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).              | [optional] [default to ]
 **location** | **String** | A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.              | [optional] [default to ]
 **encoding** | **String** | A character encoding name. | [optional] [default to ]
 **script** | **String** | A writing system code; starts with the ISO-15924 script name. | [optional] [default to ]
 **style** | **String** | Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="expand_parsed"></a>
# expand_parsed

```ruby
expand_parsed(request)
```

Expands a person's parsed name into a list of possible alternatives using options for expanding instructions.             

### Return type

[**AiNameWeightedVariants**](AiNameWeightedVariants.md)

### request Parameter

See parameter model documentation at [AiNameParsedRequest](AiNameParsedRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="format"></a>
# format

```ruby
format(request)
```

Formats a person's name in correct case and name order using options for formatting instructions.             

### Return type

[**AiNameFormatted**](AiNameFormatted.md)

### request Parameter
```ruby
AsposeEmailCloud::AiNameFormatRequest.new(
    name,
    language,
    location,
    encoding,
    script,
    format,
    style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | A name to format. | 
 **language** | **String** | An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).              | [optional] [default to ]
 **location** | **String** | A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.              | [optional] [default to ]
 **encoding** | **String** | A character encoding name. | [optional] [default to ]
 **script** | **String** | A writing system code; starts with the ISO-15924 script name. | [optional] [default to ]
 **format** | **String** | Format of the name. Predefined format can be used by ID, or custom format can be specified. Predefined formats:      /format/default/ (&#x3D; &#39;%t%F%m%N%L%p&#39;)     /format/FN+LN/ (&#x3D; &#39;%F%L&#39;)     /format/title+FN+LN/ (&#x3D; &#39;%t%F%L&#39;)     /format/FN+MN+LN/ (&#x3D; &#39;%F%M%N%L&#39;)     /format/title+FN+MN+LN/ (&#x3D; &#39;%t%F%M%N%L&#39;)     /format/FN+MI+LN/ (&#x3D; &#39;%F%m%N%L&#39;)     /format/title+FN+MI+LN/ (&#x3D; &#39;%t%F%m%N%L&#39;)     /format/LN/ (&#x3D; &#39;%L&#39;)     /format/title+LN/ (&#x3D; &#39;%t%L&#39;)     /format/LN+FN+MN/ (&#x3D; &#39;%L,%F%M%N&#39;)     /format/LN+title+FN+MN/ (&#x3D; &#39;%L,%t%F%M%N&#39;)     /format/LN+FN+MI/ (&#x3D; &#39;%L,%F%m%N&#39;)     /format/LN+title+FN+MI/ (&#x3D; &#39;%L,%t%F%m%N&#39;)  Custom format string - custom combination of characters and the next term placeholders:      &#39;%t&#39; - Title (prefix)     &#39;%F&#39; - First name     &#39;%f&#39; - First initial     &#39;%M&#39; - Middle name(s)     &#39;%m&#39; - Middle initial(s)     &#39;%N&#39; - Nickname     &#39;%L&#39; - Last name     &#39;%l&#39; - Last initial     &#39;%p&#39; - Postfix  If no value for format option was provided, its default value is &#39;%t%F%m%N%L%p&#39;              | [optional] [default to ]
 **style** | **String** | Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="format_parsed"></a>
# format_parsed

```ruby
format_parsed(request)
```

Formats a person's parsed name in correct case and name order using options for formatting instructions.             

### Return type

[**AiNameFormatted**](AiNameFormatted.md)

### request Parameter

See parameter model documentation at [AiNameParsedRequest](AiNameParsedRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="genderize"></a>
# genderize

```ruby
genderize(request)
```

Detect person's gender from name string.             

### Return type

[**AiNameGenderHypothesisList**](AiNameGenderHypothesisList.md)

### request Parameter
```ruby
AsposeEmailCloud::AiNameGenderizeRequest.new(
    name,
    language,
    location,
    encoding,
    script,
    style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | A name to genderize. | 
 **language** | **String** | An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).              | [optional] [default to ]
 **location** | **String** | A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.              | [optional] [default to ]
 **encoding** | **String** | A character encoding name. | [optional] [default to ]
 **script** | **String** | A writing system code; starts with the ISO-15924 script name. | [optional] [default to ]
 **style** | **String** | Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="genderize_parsed"></a>
# genderize_parsed

```ruby
genderize_parsed(request)
```

Detect person's gender from parsed name.             

### Return type

[**AiNameGenderHypothesisList**](AiNameGenderHypothesisList.md)

### request Parameter

See parameter model documentation at [AiNameParsedRequest](AiNameParsedRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="match"></a>
# match

```ruby
match(request)
```

Compare people's names. Uses options for comparing instructions.             

### Return type

[**AiNameMatchResult**](AiNameMatchResult.md)

### request Parameter
```ruby
AsposeEmailCloud::AiNameMatchRequest.new(
    name,
    other_name,
    language,
    location,
    encoding,
    script,
    style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | A name to match. | 
 **other_name** | **String** | Another name to match. | 
 **language** | **String** | An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).              | [optional] [default to ]
 **location** | **String** | A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.              | [optional] [default to ]
 **encoding** | **String** | A character encoding name. | [optional] [default to ]
 **script** | **String** | A writing system code; starts with the ISO-15924 script name. | [optional] [default to ]
 **style** | **String** | Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="match_parsed"></a>
# match_parsed

```ruby
match_parsed(request)
```

Compare people's parsed names and attributes. Uses options for comparing instructions.             

### Return type

[**AiNameMatchResult**](AiNameMatchResult.md)

### request Parameter

See parameter model documentation at [AiNameMatchParsedRequest](AiNameMatchParsedRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="parse"></a>
# parse

```ruby
parse(request)
```

Parse name to components.             

### Return type

[**AiNameComponentList**](AiNameComponentList.md)

### request Parameter
```ruby
AsposeEmailCloud::AiNameParseRequest.new(
    name,
    language,
    location,
    encoding,
    script,
    style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | A name to parse. | 
 **language** | **String** | An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).              | [optional] [default to ]
 **location** | **String** | A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.              | [optional] [default to ]
 **encoding** | **String** | A character encoding name. | [optional] [default to ]
 **script** | **String** | A writing system code; starts with the ISO-15924 script name. | [optional] [default to ]
 **style** | **String** | Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="parse_email_address"></a>
# parse_email_address

```ruby
parse_email_address(request)
```

Parse person's name out of an email address.             

### Return type

[**AiNameExtractedList**](AiNameExtractedList.md)

### request Parameter
```ruby
AsposeEmailCloud::AiNameParseEmailAddressRequest.new(
    email_address,
    language,
    location,
    encoding,
    script,
    style)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String** | Email address to parse. | 
 **language** | **String** | An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).              | [optional] [default to ]
 **location** | **String** | A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.              | [optional] [default to ]
 **encoding** | **String** | A character encoding name. | [optional] [default to ]
 **script** | **String** | A writing system code; starts with the ISO-15924 script name. | [optional] [default to ]
 **style** | **String** | Name writing style. Enum, available values: Formal, Informal, Legal, Academic | [optional] [default to 0]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

