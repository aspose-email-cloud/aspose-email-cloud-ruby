# AsposeEmailCloud::MapiPropertyDto

Mapi property             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**descriptor** |[**MapiPropertyDescriptor**](MapiPropertyDescriptor.md) | Property descriptor              | [optional] 
**discriminator** |**String** |  | 


## Example
```ruby
mapi_property_dto = MapiPropertyDto.new(
  descriptor: MapiKnownPropertyDescriptor.new(
    name: 'DisplayName'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
