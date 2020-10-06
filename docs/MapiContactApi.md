# MapiContactApi (EmailCloud.mapi.contact)

MAPI contact operations

<a name="as_contact_dto"></a>
## as_contact_dto

Description: Converts MAPI contact model to ContactDto model.             

Returns: Contact model.

Method call example:
```ruby
result = api.mapi.contact.as_contact_dto(mapi_contact_dto)
```

### Parameter: mapi_contact_dto

Description: MAPI contact model to convert.

See parameter model documentation at [MapiContactDto](MapiContactDto.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
mapi_contact_dto = MapiContactDto.new(
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
    primary_telephone_number: '+49 211 4247 21'))
```

</details>

### Result

Description: Contact model.

Return type: [**ContactDto**](ContactDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = ContactDto.new(
  attachments: [
    Attachment.new(
      name: 'attachment.txt',
      base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
  display_name: 'Alex Thomas',
  email_addresses: [
    EmailAddress.new(
      category: EnumWithCustomOfEmailAddressCategory.new(
        value: 'Custom',
        description: 'Partners'),
      display_name: 'Alex Thomas Partners',
      preferred: true,
      address: 'email@aspose.com')],
  gender: 'Male',
  given_name: 'Alex',
  phone_numbers: [
    PhoneNumber.new(
      category: EnumWithCustomOfPhoneNumberCategory.new(
        value: 'Office'),
      number: '+49 211 4247 21',
      preferred: true)],
  profession: 'GENERAL DIRECTOR',
  surname: 'Thomas',
  urls: [
    Url.new(
      category: EnumWithCustomOfUrlCategory.new(
        value: 'Work'),
      preferred: true,
      href: 'www.aspose.com')])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
mapi_contact_dto = MapiContactDto.new(
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
    primary_telephone_number: '+49 211 4247 21'))

// Call method:
result = api.mapi.contact.as_contact_dto(mapi_contact_dto)

// Result example:
result = ContactDto.new(
  attachments: [
    Attachment.new(
      name: 'attachment.txt',
      base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
  display_name: 'Alex Thomas',
  email_addresses: [
    EmailAddress.new(
      category: EnumWithCustomOfEmailAddressCategory.new(
        value: 'Custom',
        description: 'Partners'),
      display_name: 'Alex Thomas Partners',
      preferred: true,
      address: 'email@aspose.com')],
  gender: 'Male',
  given_name: 'Alex',
  phone_numbers: [
    PhoneNumber.new(
      category: EnumWithCustomOfPhoneNumberCategory.new(
        value: 'Office'),
      number: '+49 211 4247 21',
      preferred: true)],
  profession: 'GENERAL DIRECTOR',
  surname: 'Thomas',
  urls: [
    Url.new(
      category: EnumWithCustomOfUrlCategory.new(
        value: 'Work'),
      preferred: true,
      href: 'www.aspose.com')])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="as_file"></a>
## as_file

Description: Converts MAPI contact model to specified format and returns as file.             

Returns: File stream in specified format.

Method call example:
```ruby
result = api.mapi.contact.as_file(request)
```

### Parameter: request

Description: MAPI contact model to convert.

See parameter model documentation at [MapiContactAsFileRequest](MapiContactAsFileRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiContactAsFileRequest.new(
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

</details>

### Result

Description: File stream in specified format.

Return type: **file**

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = MapiContactAsFileRequest.new(
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

// Call method:
result = api.mapi.contact.as_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="from_file"></a>
## from_file

Description: Converts contact file to a MAPI model representation.             

Returns: MAPI model

Method call example:
```ruby
result = api.mapi.contact.from_file(request)
```

### Parameter: request

Description: from_file method request.

See parameter model documentation at [MapiContactFromFileRequest](MapiContactFromFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiContactFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/contact.msg'))
```

</details>

### Result

Description: MAPI model

Return type: [**MapiContactDto**](MapiContactDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = MapiContactDto.new(
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
    primary_telephone_number: '+49 211 4247 21'))
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = MapiContactFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/contact.msg'))

// Call method:
result = api.mapi.contact.from_file(request)

// Result example:
result = MapiContactDto.new(
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
    primary_telephone_number: '+49 211 4247 21'))
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get"></a>
## get

Description: Get MAPI contact document.             

Returns: Contact model.

Method call example:
```ruby
result = api.mapi.contact.get(request)
```

### Parameter: request

Description: get method request.

See parameter model documentation at [MapiContactGetRequest](MapiContactGetRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiContactGetRequest.new(
    format: 'VCard',
    file_name: 'contact.vcf',
    folder: 'folder/on/storage',
    storage: 'First Storage')
```

</details>

### Result

Description: Contact model.

Return type: [**MapiContactDto**](MapiContactDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = MapiContactDto.new(
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
    primary_telephone_number: '+49 211 4247 21'))
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = MapiContactGetRequest.new(
    format: 'VCard',
    file_name: 'contact.vcf',
    folder: 'folder/on/storage',
    storage: 'First Storage')

// Call method:
result = api.mapi.contact.get(request)

// Result example:
result = MapiContactDto.new(
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
    primary_telephone_number: '+49 211 4247 21'))
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="save"></a>
## save

Description: Save MAPI Contact to storage.             

Method call example:
```ruby
api.mapi.contact.save(request)
```

### Parameter: request

Description: Create/Update contact request.

See parameter model documentation at [MapiContactSaveRequest](MapiContactSaveRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiContactSaveRequest.new(
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

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = MapiContactSaveRequest.new(
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

// Call method:
api.mapi.contact.save(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

