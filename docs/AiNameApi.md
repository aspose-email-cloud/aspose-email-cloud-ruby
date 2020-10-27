# AiNameApi (EmailCloud.ai.name)

AI Name operations.

<a name="complete"></a>
## complete

Description: The call proposes k most probable names for given starting characters.             

Returns: List of name variations.

Method call example:
```ruby
result = api.ai.name.complete(request)
```

### Parameter: request

Description: complete method request.

See parameter model documentation at [AiNameCompleteRequest](AiNameCompleteRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameCompleteRequest.new(
    name: 'Dav')
```

</details>

### Result

Description: List of name variations.

Return type: [**AiNameWeightedVariants**](AiNameWeightedVariants.md)

<details>
    <summary>Result example</summary>

```ruby
result = AiNameWeightedVariants.new(
  names: [
    AiNameWeighted.new(
      name: 'J. Cane',
      score: 1),
    AiNameWeighted.new(
      name: 'Mr. Cane',
      score: 0.75)])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameCompleteRequest.new(
    name: 'Dav')

// Call method:
result = api.ai.name.complete(request)

// Result example:
result = AiNameWeightedVariants.new(
  names: [
    AiNameWeighted.new(
      name: 'J. Cane',
      score: 1),
    AiNameWeighted.new(
      name: 'Mr. Cane',
      score: 0.75)])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="expand"></a>
## expand

Description: Expands a person's name into a list of possible alternatives using options for expanding instructions.             

Returns: List of name variations.

Method call example:
```ruby
result = api.ai.name.expand(request)
```

### Parameter: request

Description: expand method request.

See parameter model documentation at [AiNameExpandRequest](AiNameExpandRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameExpandRequest.new(
    name: 'John Cane')
```

</details>

### Result

Description: List of name variations.

Return type: [**AiNameWeightedVariants**](AiNameWeightedVariants.md)

<details>
    <summary>Result example</summary>

```ruby
result = AiNameWeightedVariants.new(
  names: [
    AiNameWeighted.new(
      name: 'J. Cane',
      score: 1),
    AiNameWeighted.new(
      name: 'Mr. Cane',
      score: 0.75)])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameExpandRequest.new(
    name: 'John Cane')

// Call method:
result = api.ai.name.expand(request)

// Result example:
result = AiNameWeightedVariants.new(
  names: [
    AiNameWeighted.new(
      name: 'J. Cane',
      score: 1),
    AiNameWeighted.new(
      name: 'Mr. Cane',
      score: 0.75)])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="expand_parsed"></a>
## expand_parsed

Description: Expands a person's parsed name into a list of possible alternatives using options for expanding instructions.             

Returns: List of name variations.

Method call example:
```ruby
result = api.ai.name.expand_parsed(request)
```

### Parameter: request

Description: Parsed name with options.

See parameter model documentation at [AiNameParsedRequest](AiNameParsedRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameParsedRequest.new(
  parsed_name: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])
```

</details>

### Result

Description: List of name variations.

Return type: [**AiNameWeightedVariants**](AiNameWeightedVariants.md)

<details>
    <summary>Result example</summary>

```ruby
result = AiNameWeightedVariants.new(
  names: [
    AiNameWeighted.new(
      name: 'J. Cane',
      score: 1),
    AiNameWeighted.new(
      name: 'Mr. Cane',
      score: 0.75)])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameParsedRequest.new(
  parsed_name: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])

// Call method:
result = api.ai.name.expand_parsed(request)

// Result example:
result = AiNameWeightedVariants.new(
  names: [
    AiNameWeighted.new(
      name: 'J. Cane',
      score: 1),
    AiNameWeighted.new(
      name: 'Mr. Cane',
      score: 0.75)])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="format"></a>
## format

Description: Formats a person's name in correct case and name order using options for formatting instructions.             

Returns: Formatted name.

Method call example:
```ruby
result = api.ai.name.format(request)
```

### Parameter: request

Description: format method request.

See parameter model documentation at [AiNameFormatRequest](AiNameFormatRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameFormatRequest.new(
    name: 'Mr. John Michael Cane',
    format: '%t%L%f%m')
```

</details>

### Result

Description: Formatted name.

Return type: [**AiNameFormatted**](AiNameFormatted.md)

<details>
    <summary>Result example</summary>

```ruby
result = AiNameFormatted.new(
  name: 'Mr. Cane J. M.',
  comments: 'format: %t%L%f%m; source: parsed format')
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameFormatRequest.new(
    name: 'Mr. John Michael Cane',
    format: '%t%L%f%m')

// Call method:
result = api.ai.name.format(request)

// Result example:
result = AiNameFormatted.new(
  name: 'Mr. Cane J. M.',
  comments: 'format: %t%L%f%m; source: parsed format')
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="format_parsed"></a>
## format_parsed

Description: Formats a person's parsed name in correct case and name order using options for formatting instructions.             

Returns: Formatted name.

Method call example:
```ruby
result = api.ai.name.format_parsed(request)
```

### Parameter: request

Description: Parsed name with options.

See parameter model documentation at [AiNameParsedRequest](AiNameParsedRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameParsedRequest.new(
  parsed_name: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])
```

</details>

### Result

Description: Formatted name.

Return type: [**AiNameFormatted**](AiNameFormatted.md)

<details>
    <summary>Result example</summary>

```ruby
result = AiNameFormatted.new(
  name: 'Mr. Cane J. M.',
  comments: 'format: %t%L%f%m; source: parsed format')
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameParsedRequest.new(
  parsed_name: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])

// Call method:
result = api.ai.name.format_parsed(request)

// Result example:
result = AiNameFormatted.new(
  name: 'Mr. Cane J. M.',
  comments: 'format: %t%L%f%m; source: parsed format')
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="genderize"></a>
## genderize

Description: Detect person's gender from name string.             

Returns: Hypotheses about person's gender.

Method call example:
```ruby
result = api.ai.name.genderize(request)
```

### Parameter: request

Description: genderize method request.

See parameter model documentation at [AiNameGenderizeRequest](AiNameGenderizeRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameGenderizeRequest.new(
    name: 'John Cane')
```

</details>

### Result

Description: Hypotheses about person's gender.

Return type: [**AiNameGenderHypothesisList**](AiNameGenderHypothesisList.md)

<details>
    <summary>Result example</summary>

```ruby
result = 
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameGenderizeRequest.new(
    name: 'John Cane')

// Call method:
result = api.ai.name.genderize(request)

// Result example:
result = 
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="genderize_parsed"></a>
## genderize_parsed

Description: Detect person's gender from parsed name.             

Returns: Hypotheses about person's gender.

Method call example:
```ruby
result = api.ai.name.genderize_parsed(request)
```

### Parameter: request

Description: Gender detection request data.

See parameter model documentation at [AiNameParsedRequest](AiNameParsedRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameParsedRequest.new(
  parsed_name: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])
```

</details>

### Result

Description: Hypotheses about person's gender.

Return type: [**AiNameGenderHypothesisList**](AiNameGenderHypothesisList.md)

<details>
    <summary>Result example</summary>

```ruby
result = 
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameParsedRequest.new(
  parsed_name: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])

// Call method:
result = api.ai.name.genderize_parsed(request)

// Result example:
result = 
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="match"></a>
## match

Description: Compare people's names. Uses options for comparing instructions.             

Returns: Match result.

Method call example:
```ruby
result = api.ai.name.match(request)
```

### Parameter: request

Description: match method request.

See parameter model documentation at [AiNameMatchRequest](AiNameMatchRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameMatchRequest.new(
    name: 'John Michael Cane',
    other_name: 'Cane J.')
```

</details>

### Result

Description: Match result.

Return type: [**AiNameMatchResult**](AiNameMatchResult.md)

<details>
    <summary>Result example</summary>

```ruby
result = AiNameMatchResult.new(
  similarity: 0.6,
  mismatches: [
    AiNameMismatch.new(
      category: 'Gender',
      explanation: 'no_match')])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameMatchRequest.new(
    name: 'John Michael Cane',
    other_name: 'Cane J.')

// Call method:
result = api.ai.name.match(request)

// Result example:
result = AiNameMatchResult.new(
  similarity: 0.6,
  mismatches: [
    AiNameMismatch.new(
      category: 'Gender',
      explanation: 'no_match')])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="match_parsed"></a>
## match_parsed

Description: Compare people's parsed names and attributes. Uses options for comparing instructions.             

Returns: Match result.

Method call example:
```ruby
result = api.ai.name.match_parsed(request)
```

### Parameter: request

Description: Parsed names to match.

See parameter model documentation at [AiNameMatchParsedRequest](AiNameMatchParsedRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameMatchParsedRequest.new(
  other_parsed_name: [
    AiNameComponent.new(
      value: 'J',
      category: 'FirstInitial',
      score: 1),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 3),
    AiNameComponent.new(
      value: '%f%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)],
  parsed_name: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])
```

</details>

### Result

Description: Match result.

Return type: [**AiNameMatchResult**](AiNameMatchResult.md)

<details>
    <summary>Result example</summary>

```ruby
result = AiNameMatchResult.new(
  similarity: 0.6,
  mismatches: [
    AiNameMismatch.new(
      category: 'Gender',
      explanation: 'no_match')])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameMatchParsedRequest.new(
  other_parsed_name: [
    AiNameComponent.new(
      value: 'J',
      category: 'FirstInitial',
      score: 1),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 3),
    AiNameComponent.new(
      value: '%f%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)],
  parsed_name: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])

// Call method:
result = api.ai.name.match_parsed(request)

// Result example:
result = AiNameMatchResult.new(
  similarity: 0.6,
  mismatches: [
    AiNameMismatch.new(
      category: 'Gender',
      explanation: 'no_match')])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="parse"></a>
## parse

Description: Parse name to components.             

Returns: List of name components.

Method call example:
```ruby
result = api.ai.name.parse(request)
```

### Parameter: request

Description: parse method request.

See parameter model documentation at [AiNameParseRequest](AiNameParseRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameParseRequest.new(
    name: 'John Cane',
    language: 'eng',
    location: 'USA')
```

</details>

### Result

Description: List of name components.

Return type: [**AiNameComponentList**](AiNameComponentList.md)

<details>
    <summary>Result example</summary>

```ruby
result = AiNameComponentList.new(
  value: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameParseRequest.new(
    name: 'John Cane',
    language: 'eng',
    location: 'USA')

// Call method:
result = api.ai.name.parse(request)

// Result example:
result = AiNameComponentList.new(
  value: [
    AiNameComponent.new(
      value: 'John',
      category: 'FirstName',
      score: 0.95),
    AiNameComponent.new(
      value: 'Cane',
      category: 'LastName',
      score: 0.5,
      position: 5),
    AiNameComponent.new(
      value: '%F%L',
      category: 'Format'),
    AiNameComponent.new(
      value: '0.5',
      category: 'Score',
      score: 0.5)])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="parse_email_address"></a>
## parse_email_address

Description: Parse person's name out of an email address.             

Returns: Match result.

Method call example:
```ruby
result = api.ai.name.parse_email_address(request)
```

### Parameter: request

Description: parse_email_address method request.

See parameter model documentation at [AiNameParseEmailAddressRequest](AiNameParseEmailAddressRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiNameParseEmailAddressRequest.new(
    email_address: 'john-cane@gmail.com')
```

</details>

### Result

Description: Match result.

Return type: [**AiNameExtractedList**](AiNameExtractedList.md)

<details>
    <summary>Result example</summary>

```ruby
result = 
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = AiNameParseEmailAddressRequest.new(
    email_address: 'john-cane@gmail.com')

// Call method:
result = api.ai.name.parse_email_address(request)

// Result example:
result = 
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

