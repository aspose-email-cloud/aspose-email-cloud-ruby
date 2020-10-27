# AsposeEmailCloud::MapiStringPropertyDto

Mapi property with string value             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**descriptor** |[**MapiPropertyDescriptor**](MapiPropertyDescriptor.md) | Property descriptor              | [optional] 
**discriminator** |**String** |  | 
**value** |**String** | Property value              | [optional] 

Parent class: [MapiPropertyDto](MapiPropertyDto.md)


## Example
```ruby
mapi_string_property_dto = MapiStringPropertyDto.new(
  value: 'SomeName',
  descriptor: MapiKnownPropertyDescriptor.new(
    name: 'DisplayName'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
