# AsposeEmailCloud::MapiResponseTypePropertyDto

Mapi property with response type value             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**descriptor** |[**MapiPropertyDescriptor**](MapiPropertyDescriptor.md) | Property descriptor              | [optional] 
**discriminator** |**String** |  | 
**value** |**String** | Represents the types of recipient responses that are received for a meeting. Enum, available values: Unknown, Organizer, Tentative, Accept, Decline, NoResponseReceived | 

Parent class: [MapiPropertyDto](MapiPropertyDto.md)


## Example
```ruby
mapi_response_type_property_dto = MapiResponseTypePropertyDto.new(
  value: 'Accept',
  descriptor: MapiKnownPropertyDescriptor.new(
    name: 'ResponseStatus'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
