# AsposeEmailCloud::AiNameWeightedVariants

Name variants             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**names** |[**Array&lt;AiNameWeighted&gt;**](AiNameWeighted.md) | List of name variations              | [optional] 
**comments** |**String** | Usually empty; can contain extra message describing some issue occurred during processing              | [optional] 


## Example
```ruby
ai_name_weighted_variants = AiNameWeightedVariants.new(
  names: [
    AiNameWeighted.new(
      name: 'J. Cane',
      score: 1),
    AiNameWeighted.new(
      name: 'Mr. Cane',
      score: 0.75)])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
