# AsposeEmailCloud::AiNameExtracted

Extracted name             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**name** |[**Array&lt;AiNameExtractedComponent&gt;**](AiNameExtractedComponent.md) | Extracted name components              | [optional] 
**score** |**Float** | Extracted name score              | 


## Example
```ruby
ai_name_extracted = AiNameExtracted.new(
  name: [
    AiNameExtractedComponent.new(
      category: 'Surname',
      value: 'Cane'),
    AiNameExtractedComponent.new(
      category: 'SomeName',
      value: 'John')],
  score: 0.5)
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
