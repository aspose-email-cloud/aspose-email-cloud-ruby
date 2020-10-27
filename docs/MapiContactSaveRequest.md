# AsposeEmailCloud::MapiContactSaveRequest

MapiContact save to storage request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**storage_file** |[**StorageFileLocation**](StorageFileLocation.md) |  | 
**value** |[**MapiContactDto**](MapiContactDto.md) |  | 
**format** |**String** | Enumerates contact formats. Enum, available values: VCard, WebDav, Msg | 

Parent class: [StorageModelOfMapiContactDto](StorageModelOfMapiContactDto.md)


## Example
```ruby
mapi_contact_save_request = MapiContactSaveRequest.new(
  format: 'Msg',
  storage_file: StorageFileLocation.new(
    file_name: 'contact.msg',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
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
