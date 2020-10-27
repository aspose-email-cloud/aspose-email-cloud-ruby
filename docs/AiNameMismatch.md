# AsposeEmailCloud::AiNameMismatch

Names mismatch detailed description             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**category** |**String** | Mismatch type. Enum, available values: Unknown, FirstName, MiddleName, MiddleLastName, MiddleNickname, Gender, Context | 
**similarity** |**Float** | Similarity score              | 
**explanation** |**String** | Explanation or mismatch subtype              | [optional] 


## Example
```ruby
ai_name_mismatch = AiNameMismatch.new(
  category: 'Gender',
  explanation: 'no_match')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
