# AsposeEmailCloud::MapiPidLidPropertyDescriptor

Property identified by an unsigned 32-bit quantity along with a property set             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**discriminator** |**String** |  | 
**canonical_name** |**String** | The name used to refer to the property in the documentation. The prefix of the canonical name identifies the basic characteristics of a property to the implementer. The canonical naming structure uses three categories that are denoted by the following prefixes to the canonical property name: * PidLid prefix: Properties identified by an unsigned 32-bit quantity along with a property set. * PidName prefix: Properties identified by a string name along with a property set. * PidTag prefix: Properties identified by an unsigned 16-bit quantity.              | [optional] 
**data_type** |**String** | [MS-OXCDATA]: Data Structures Enum, available values: Unspecified, Null, Integer16, Integer32, Floating32, Floating64, Currency, FloatingTime, ErrorCode, Boolean, Integer64, String, String8, Time, Guid, ServerId, Restriction, RuleAction, Binary, MultipleInteger16, MultipleInteger32, MultipleFloating32, MultipleFloating64, MultipleCurrency, MultipleFloatingTime, MultipleBoolean, MultipleInteger64, MultipleString, MultipleString8, MultipleTime, MultipleGuid, MultipleBinary, Object | 
**multiple_values_data_type** |**BOOLEAN** | Indicates if data type contains of multiple values              | 
**name** |**String** | A string that identifies the property              | [optional] 
**long_id** |**Integer** | An unsigned 32-bit quantity that, along with the property set, identifies a named property.              | 
**property_set** |**String** | A GUID that identifies a group of properties with a similar purpose.              | 

Parent class: [MapiPidPropertyDescriptor](MapiPidPropertyDescriptor.md)


[[Back to Model list]](Models.md) [[Back to README]](README.md)
