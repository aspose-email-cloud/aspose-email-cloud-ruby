# AsposeEmailCloud::PhoneNumber

A phone number.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**category** |[**EnumWithCustomOfPhoneNumberCategory**](EnumWithCustomOfPhoneNumberCategory.md) | Phone number category.              | [optional] 
**number** |**String** | Phone number.              | [optional] 
**preferred** |**BOOLEAN** | Defines whether phone number is preferred.              | 


## Example
```ruby
phone_number = PhoneNumber.new(
  category: EnumWithCustom<PhoneNumberCategory>.new(
    value: 'Company'),
  number: '+44 141 628 8900',
  preferred: true)
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
