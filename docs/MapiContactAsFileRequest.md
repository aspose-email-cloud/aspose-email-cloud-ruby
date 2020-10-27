# AsposeEmailCloud::MapiContactAsFileRequest

Convert MapiContact to file request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** | Enumerates contact formats. Enum, available values: VCard, WebDav, Msg | 
**value** |[**MapiContactDto**](MapiContactDto.md) | MAPI contact model.              | 


## Example
```ruby
mapi_contact_as_file_request = MapiContactAsFileRequest.new(
  format: 'Msg',
  value: MapiContactDto.new(
    electronic_addresses: MapiContactElectronicAddressPropertySetDto.new(
      default_email_address: MapiContactElectronicAddressDto.new(
        email_address: 'email@aspose.com')),
    name_info: MapiContactNamePropertySetDto.new(
      given_name: 'Alex',
      surname: 'Thomas'),
    personal_info: MapiContactPersonalInfoPropertySetDto.new(
      business_home_page: 'www.aspose.com'),
    professional_info: MapiContactProfessionalPropertySetDto.new(
      profession: 'GENERAL DIRECTOR'),
    telephones: MapiContactTelephonePropertySetDto.new(
      primary_telephone_number: '+49 211 4247 21')))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
