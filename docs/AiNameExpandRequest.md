# AiNameExpandRequest

Request model for AiNameApi.expand

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**name** |**String** |A name to expand. |
**language** |**String** |An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \"it\" or \"ita\" for Italian).              |[optional] [default to ]
**location** |**String** |A geographic code such as an ISO-3166 two letter country code, for example \"FR\" for France.              |[optional] [default to ]
**encoding** |**String** |A character encoding name. |[optional] [default to ]
**script** |**String** |A writing system code; starts with the ISO-15924 script name. |[optional] [default to ]
**style** |**String** |Name writing style. Enum, available values: Formal, Informal, Legal, Academic |[optional] [default to 0]

## Example
```ruby
request = AiNameExpandRequest.new(
    name: 'John Cane')
```
