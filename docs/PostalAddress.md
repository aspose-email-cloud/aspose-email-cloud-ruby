# AsposeEmailCloud::PostalAddress

A postal address             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**address** |**String** | Address.              | [optional] 
**category** |[**EnumWithCustomOfPostalAddressCategory**](EnumWithCustomOfPostalAddressCategory.md) | Address category.              | [optional] 
**city** |**String** | Address's city.              | [optional] 
**country** |**String** | Address's country.              | [optional] 
**country_code** |**String** | Country code.              | [optional] 
**is_mailing_address** |**BOOLEAN** | Defines whether address may be used for mailing.              | 
**postal_code** |**String** | Postal code.              | [optional] 
**post_office_box** |**String** | Post Office box.              | [optional] 
**preferred** |**BOOLEAN** | Defines whether postal address is preferred.              | 
**state_or_province** |**String** | Address's region.              | [optional] 
**street** |**String** | Address's street.              | [optional] 


## Example
```ruby
postal_address = PostalAddress.new(
  address: '221b',
  category: EnumWithCustomOfPostalAddressCategory.new(
    ),
  city: 'London',
  country: 'United Kingdom',
  is_mailing_address: true,
  postal_code: 'NW1 6XE',
  preferred: true,
  street: 'Baker St')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
