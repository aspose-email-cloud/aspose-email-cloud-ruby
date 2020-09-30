# AsposeEmailCloud::AiNameMatchResult

Two names match result             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**similarity** |**Float** | Similarity score              | 
**mismatches** |[**Array&lt;AiNameMismatch&gt;**](AiNameMismatch.md) | Detailed description of mismatches              | [optional] 


## Example
```ruby
ai_name_match_result = AiNameMatchResult.new(
  similarity: 0.6,
  mismatches: [
    AiNameMismatch.new(
      category: 'Gender',
      explanation: 'no_match')])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
