# AsposeEmailCloud::AiNameComponentList

List of name components             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;AiNameComponent&gt;**](AiNameComponent.md) |  | [optional] 

Parent class: [ListResponseOfAiNameComponent](ListResponseOfAiNameComponent.md)


## Example
```ruby
ai_name_component_list = AiNameComponentList.new(
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
