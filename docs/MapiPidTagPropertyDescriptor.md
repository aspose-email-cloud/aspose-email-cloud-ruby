# AsposeEmailCloud::MapiPidTagPropertyDescriptor

A property that is defined by a 16-bit property ID and a 16-bit property type. The property ID for a tagged property is in the range 0x001 - 0x7FFF. Property IDs in the range 0x8000 - 0x8FFF are reserved for assignment to named properties             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**discriminator** |**String** |  | 
**canonical_name** |**String** | The name used to refer to the property in the documentation. The prefix of the canonical name identifies the basic characteristics of a property to the implementer. The canonical naming structure uses three categories that are denoted by the following prefixes to the canonical property name: * PidLid prefix: Properties identified by an unsigned 32-bit quantity along with a property set. * PidName prefix: Properties identified by a string name along with a property set. * PidTag prefix: Properties identified by an unsigned 16-bit quantity.              | [optional] 
**data_type** |**String** | [MS-OXCDATA]: Data Structures Enum, available values: Unspecified, Null, Integer16, Integer32, Floating32, Floating64, Currency, FloatingTime, ErrorCode, Boolean, Integer64, String, String8, Time, Guid, ServerId, Restriction, RuleAction, Binary, MultipleInteger16, MultipleInteger32, MultipleFloating32, MultipleFloating64, MultipleCurrency, MultipleFloatingTime, MultipleBoolean, MultipleInteger64, MultipleString, MultipleString8, MultipleTime, MultipleGuid, MultipleBinary, Object | 
**multiple_values_data_type** |**BOOLEAN** | Indicates if data type contains of multiple values              | 
**name** |**String** | A string that identifies the property              | [optional] 
**id** |**Integer** | An unsigned 16-bit quantity that identifies a tagged property. Property IDs are not necessarily unique. With the exception of property IDs in the range from 0x6800 to 0x7BFF, the combination of property ID and data type are unique. Property IDs in the range from 0x6800 to 0x7BFF are defined by the message class.              | 
**tag** |**Integer** | A property tag is a 32-bit number that contains a unique property identifier in bits 16 through 31 and a property type in bits 0 through 15.              | 

Parent class: [MapiPidPropertyDescriptor](MapiPidPropertyDescriptor.md)


[[Back to Model list]](Models.md) [[Back to README]](README.md)
