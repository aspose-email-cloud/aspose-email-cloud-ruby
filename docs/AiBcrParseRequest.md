# AiBcrParseRequest

Request model for AiBcrApi.parse

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file** |**File** |File to parse |
**countries** |**String** |Comma-separated codes of countries. |[optional] [default to ]
**languages** |**String** |Comma-separated ISO-639 codes of languages (either 639-1 or 639-3; i.e. \"it\" or \"ita\" for Italian); it's \"\" by default.              |[optional] [default to ]
**is_single** |**BOOLEAN** |Determines that image contains single VCard or more. |[optional] [default to true]

## Example
```ruby
request = AiBcrParseRequest.new(
    file: File.new('/path/to/image.png'),
    countries: 'us',
    languages: 'en',
    is_single: true)
```
