# AsposeEmailCloud::AiNameMatchParsedRequest

Two parsed names to match request             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**cultural_context** |[**AiNameCulturalContext**](AiNameCulturalContext.md) | AiName parser cultural context              | [optional] 
**format** |**String** | Format of the name. Predefined format can be used by ID, or custom format can be specified. Predefined formats:      /format/default/ (= '%t%F%m%N%L%p')     /format/FN+LN/ (= '%F%L')     /format/title+FN+LN/ (= '%t%F%L')     /format/FN+MN+LN/ (= '%F%M%N%L')     /format/title+FN+MN+LN/ (= '%t%F%M%N%L')     /format/FN+MI+LN/ (= '%F%m%N%L')     /format/title+FN+MI+LN/ (= '%t%F%m%N%L')     /format/LN/ (= '%L')     /format/title+LN/ (= '%t%L')     /format/LN+FN+MN/ (= '%L,%F%M%N')     /format/LN+title+FN+MN/ (= '%L,%t%F%M%N')     /format/LN+FN+MI/ (= '%L,%F%m%N')     /format/LN+title+FN+MI/ (= '%L,%t%F%m%N')  Custom format string - custom combination of characters and the next term placeholders:      '%t' - Title (prefix)     '%F' - First name     '%f' - First initial     '%M' - Middle name(s)     '%m' - Middle initial(s)     '%N' - Nickname     '%L' - Last name     '%l' - Last initial     '%p' - Postfix  If no value for format option was provided, its default value is '%t%F%m%N%L%p'              | [optional] 
**parsed_name** |[**Array&lt;AiNameComponent&gt;**](AiNameComponent.md) | Parsed name              | 
**other_parsed_name** |[**Array&lt;AiNameComponent&gt;**](AiNameComponent.md) | Other parsed name to match              | 

Parent class: [AiNameParsedRequest](AiNameParsedRequest.md)


## Example
```ruby
ai_name_match_parsed_request = AiNameMatchParsedRequest.new(
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
