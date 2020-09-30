# ContactApi (EmailCloud.contact)

Contact document operations. Supported formats: VCard, MSG, WebDav

<a name="as_file"></a>
## as_file

Description: Converts contact model to specified format and returns as file             

Returns: File stream in specified format

Method call example:
```ruby
result = api.contact.as_file(request)
```

### Parameter: request

Description: Contact model and format to convert

See parameter model documentation at [ContactAsFileRequest](ContactAsFileRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ContactAsFileRequest.new(
  value: ContactDto.new(
    attachments: [
      Attachment.new(
        name: 'attachment.txt',
        base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
    display_name: 'Alex Thomas',
    email_addresses: [
      EmailAddress.new(
        category: EnumWithCustom<EmailAddressCategory>.new(
          value: 'Custom',
          description: 'Partners'),
        display_name: 'Alex Thomas Partners',
        preferred: true,
        address: 'email@aspose.com')],
    gender: 'Male',
    given_name: 'Alex',
    phone_numbers: [
      PhoneNumber.new(
        category: EnumWithCustom<PhoneNumberCategory>.new(
          value: 'Office'),
        number: '+49 211 4247 21',
        preferred: true)],
    profession: 'GENERAL DIRECTOR',
    surname: 'Thomas',
    urls: [
      Url.new(
        category: EnumWithCustom<UrlCategory>.new(
          value: 'Work'),
        preferred: true,
        href: 'www.aspose.com')]))
```

</details>

### Result

Description: File stream in specified format

Return type: **file**

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ContactAsFileRequest.new(
  value: ContactDto.new(
    attachments: [
      Attachment.new(
        name: 'attachment.txt',
        base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
    display_name: 'Alex Thomas',
    email_addresses: [
      EmailAddress.new(
        category: EnumWithCustom<EmailAddressCategory>.new(
          value: 'Custom',
          description: 'Partners'),
        display_name: 'Alex Thomas Partners',
        preferred: true,
        address: 'email@aspose.com')],
    gender: 'Male',
    given_name: 'Alex',
    phone_numbers: [
      PhoneNumber.new(
        category: EnumWithCustom<PhoneNumberCategory>.new(
          value: 'Office'),
        number: '+49 211 4247 21',
        preferred: true)],
    profession: 'GENERAL DIRECTOR',
    surname: 'Thomas',
    urls: [
      Url.new(
        category: EnumWithCustom<UrlCategory>.new(
          value: 'Work'),
        preferred: true,
        href: 'www.aspose.com')]))

// Call method:
result = api.contact.as_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="as_mapi"></a>
## as_mapi

Description: Converts ContactDto to MapiContactDto.             

Returns: MAPI model contact representation

Method call example:
```ruby
result = api.contact.as_mapi(contact_dto)
```

### Parameter: contact_dto

Description: Contact model to convert

See parameter model documentation at [ContactDto](ContactDto.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
contact_dto = ContactDto.new(
  attachments: [
    Attachment.new(
      name: 'attachment.txt',
      base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
  display_name: 'Alex Thomas',
  email_addresses: [
    EmailAddress.new(
      category: EnumWithCustom<EmailAddressCategory>.new(
        value: 'Custom',
        description: 'Partners'),
      display_name: 'Alex Thomas Partners',
      preferred: true,
      address: 'email@aspose.com')],
  gender: 'Male',
  given_name: 'Alex',
  phone_numbers: [
    PhoneNumber.new(
      category: EnumWithCustom<PhoneNumberCategory>.new(
        value: 'Office'),
      number: '+49 211 4247 21',
      preferred: true)],
  profession: 'GENERAL DIRECTOR',
  surname: 'Thomas',
  urls: [
    Url.new(
      category: EnumWithCustom<UrlCategory>.new(
        value: 'Work'),
      preferred: true,
      href: 'www.aspose.com')])
```

</details>

### Result

Description: MAPI model contact representation

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
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
contact_dto = ContactDto.new(
  attachments: [
    Attachment.new(
      name: 'attachment.txt',
      base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
  display_name: 'Alex Thomas',
  email_addresses: [
    EmailAddress.new(
      category: EnumWithCustom<EmailAddressCategory>.new(
        value: 'Custom',
        description: 'Partners'),
      display_name: 'Alex Thomas Partners',
      preferred: true,
      address: 'email@aspose.com')],
  gender: 'Male',
  given_name: 'Alex',
  phone_numbers: [
    PhoneNumber.new(
      category: EnumWithCustom<PhoneNumberCategory>.new(
        value: 'Office'),
      number: '+49 211 4247 21',
      preferred: true)],
  profession: 'GENERAL DIRECTOR',
  surname: 'Thomas',
  urls: [
    Url.new(
      category: EnumWithCustom<UrlCategory>.new(
        value: 'Work'),
      preferred: true,
      href: 'www.aspose.com')])

// Call method:
result = api.contact.as_mapi(contact_dto)

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
<a name="convert"></a>
## convert

Description: Converts contact document to specified format and returns as file             

Returns: File stream in specified destination format

Method call example:
```ruby
result = api.contact.convert(request)
```

### Parameter: request

Description: convert method request.

See parameter model documentation at [ContactConvertRequest](ContactConvertRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ContactConvertRequest.new(
    to_format: 'VCard',
    from_format: 'Msg',
    file: File.new('/path/to/contact.msg'))
```

</details>

### Result

Description: File stream in specified destination format

Return type: **file**

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ContactConvertRequest.new(
    to_format: 'VCard',
    from_format: 'Msg',
    file: File.new('/path/to/contact.msg'))

// Call method:
result = api.contact.convert(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="from_file"></a>
## from_file

Description: Converts contact document to a model representation             

Returns: Contact model

Method call example:
```ruby
result = api.contact.from_file(request)
```

### Parameter: request

Description: from_file method request.

See parameter model documentation at [ContactFromFileRequest](ContactFromFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ContactFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/contact.msg'))
```

</details>

### Result

Description: Contact model

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
      category: EnumWithCustom<EmailAddressCategory>.new(
        value: 'Custom',
        description: 'Partners'),
      display_name: 'Alex Thomas Partners',
      preferred: true,
      address: 'email@aspose.com')],
  gender: 'Male',
  given_name: 'Alex',
  phone_numbers: [
    PhoneNumber.new(
      category: EnumWithCustom<PhoneNumberCategory>.new(
        value: 'Office'),
      number: '+49 211 4247 21',
      preferred: true)],
  profession: 'GENERAL DIRECTOR',
  surname: 'Thomas',
  urls: [
    Url.new(
      category: EnumWithCustom<UrlCategory>.new(
        value: 'Work'),
      preferred: true,
      href: 'www.aspose.com')])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ContactFromFileRequest.new(
    format: 'Msg',
    file: File.new('/path/to/contact.msg'))

// Call method:
result = api.contact.from_file(request)

// Result example:
result = ContactDto.new(
  attachments: [
    Attachment.new(
      name: 'attachment.txt',
      base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
  display_name: 'Alex Thomas',
  email_addresses: [
    EmailAddress.new(
      category: EnumWithCustom<EmailAddressCategory>.new(
        value: 'Custom',
        description: 'Partners'),
      display_name: 'Alex Thomas Partners',
      preferred: true,
      address: 'email@aspose.com')],
  gender: 'Male',
  given_name: 'Alex',
  phone_numbers: [
    PhoneNumber.new(
      category: EnumWithCustom<PhoneNumberCategory>.new(
        value: 'Office'),
      number: '+49 211 4247 21',
      preferred: true)],
  profession: 'GENERAL DIRECTOR',
  surname: 'Thomas',
  urls: [
    Url.new(
      category: EnumWithCustom<UrlCategory>.new(
        value: 'Work'),
      preferred: true,
      href: 'www.aspose.com')])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get"></a>
## get

Description: Get contact document from storage.             

Returns: Contact document.

Method call example:
```ruby
result = api.contact.get(request)
```

### Parameter: request

Description: get method request.

See parameter model documentation at [ContactGetRequest](ContactGetRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ContactGetRequest.new(
    format: 'VCard',
    file_name: 'contact.vcf',
    folder: 'folder/on/storage',
    storage: 'First Storage')
```

</details>

### Result

Description: Contact document.

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
      category: EnumWithCustom<EmailAddressCategory>.new(
        value: 'Custom',
        description: 'Partners'),
      display_name: 'Alex Thomas Partners',
      preferred: true,
      address: 'email@aspose.com')],
  gender: 'Male',
  given_name: 'Alex',
  phone_numbers: [
    PhoneNumber.new(
      category: EnumWithCustom<PhoneNumberCategory>.new(
        value: 'Office'),
      number: '+49 211 4247 21',
      preferred: true)],
  profession: 'GENERAL DIRECTOR',
  surname: 'Thomas',
  urls: [
    Url.new(
      category: EnumWithCustom<UrlCategory>.new(
        value: 'Work'),
      preferred: true,
      href: 'www.aspose.com')])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ContactGetRequest.new(
    format: 'VCard',
    file_name: 'contact.vcf',
    folder: 'folder/on/storage',
    storage: 'First Storage')

// Call method:
result = api.contact.get(request)

// Result example:
result = ContactDto.new(
  attachments: [
    Attachment.new(
      name: 'attachment.txt',
      base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
  display_name: 'Alex Thomas',
  email_addresses: [
    EmailAddress.new(
      category: EnumWithCustom<EmailAddressCategory>.new(
        value: 'Custom',
        description: 'Partners'),
      display_name: 'Alex Thomas Partners',
      preferred: true,
      address: 'email@aspose.com')],
  gender: 'Male',
  given_name: 'Alex',
  phone_numbers: [
    PhoneNumber.new(
      category: EnumWithCustom<PhoneNumberCategory>.new(
        value: 'Office'),
      number: '+49 211 4247 21',
      preferred: true)],
  profession: 'GENERAL DIRECTOR',
  surname: 'Thomas',
  urls: [
    Url.new(
      category: EnumWithCustom<UrlCategory>.new(
        value: 'Work'),
      preferred: true,
      href: 'www.aspose.com')])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get_as_file"></a>
## get_as_file

Description: Converts contact document from storage to specified format and returns as file             

Returns: File stream in specified format

Method call example:
```ruby
result = api.contact.get_as_file(request)
```

### Parameter: request

Description: get_as_file method request.

See parameter model documentation at [ContactGetAsFileRequest](ContactGetAsFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ContactGetAsFileRequest.new(
    file_name: 'contact.msg',
    to_format: 'VCard',
    from_format: 'Msg',
    storage: 'First Storage',
    folder: 'folder/on/storage')
```

</details>

### Result

Description: File stream in specified format

Return type: **file**

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ContactGetAsFileRequest.new(
    file_name: 'contact.msg',
    to_format: 'VCard',
    from_format: 'Msg',
    storage: 'First Storage',
    folder: 'folder/on/storage')

// Call method:
result = api.contact.get_as_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get_list"></a>
## get_list

Description: Get contact list from storage folder.             

Returns: Contact list.

Method call example:
```ruby
result = api.contact.get_list(request)
```

### Parameter: request

Description: get_list method request.

See parameter model documentation at [ContactGetListRequest](ContactGetListRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ContactGetListRequest.new(
    format: 'VCard',
    folder: 'folder/on/storage',
    storage: 'First Storage',
    items_per_page: 10,
    page_number: 0)
```

</details>

### Result

Description: Contact list.

Return type: [**ContactStorageList**](ContactStorageList.md)

<details>
    <summary>Result example</summary>

```ruby
result = ContactStorageList.new(
  value: [
    StorageModel<ContactDto>.new(
      storage_file: StorageFileLocation.new(
        file_name: 'contact.vcf',
        storage: 'First Storage',
        folder_path: 'file/location/folder/on/storage'),
      value: ContactDto.new(
        attachments: [
          Attachment.new(
            name: 'attachment.txt',
            base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
        display_name: 'Alex Thomas',
        email_addresses: [
          EmailAddress.new(
            category: EnumWithCustom<EmailAddressCategory>.new(
              value: 'Custom',
              description: 'Partners'),
            display_name: 'Alex Thomas Partners',
            preferred: true,
            address: 'email@aspose.com')],
        gender: 'Male',
        given_name: 'Alex',
        phone_numbers: [
          PhoneNumber.new(
            category: EnumWithCustom<PhoneNumberCategory>.new(
              value: 'Office'),
            number: '+49 211 4247 21',
            preferred: true)],
        profession: 'GENERAL DIRECTOR',
        surname: 'Thomas',
        urls: [
          Url.new(
            category: EnumWithCustom<UrlCategory>.new(
              value: 'Work'),
            preferred: true,
            href: 'www.aspose.com')]))])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ContactGetListRequest.new(
    format: 'VCard',
    folder: 'folder/on/storage',
    storage: 'First Storage',
    items_per_page: 10,
    page_number: 0)

// Call method:
result = api.contact.get_list(request)

// Result example:
result = ContactStorageList.new(
  value: [
    StorageModel<ContactDto>.new(
      storage_file: StorageFileLocation.new(
        file_name: 'contact.vcf',
        storage: 'First Storage',
        folder_path: 'file/location/folder/on/storage'),
      value: ContactDto.new(
        attachments: [
          Attachment.new(
            name: 'attachment.txt',
            base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
        display_name: 'Alex Thomas',
        email_addresses: [
          EmailAddress.new(
            category: EnumWithCustom<EmailAddressCategory>.new(
              value: 'Custom',
              description: 'Partners'),
            display_name: 'Alex Thomas Partners',
            preferred: true,
            address: 'email@aspose.com')],
        gender: 'Male',
        given_name: 'Alex',
        phone_numbers: [
          PhoneNumber.new(
            category: EnumWithCustom<PhoneNumberCategory>.new(
              value: 'Office'),
            number: '+49 211 4247 21',
            preferred: true)],
        profession: 'GENERAL DIRECTOR',
        surname: 'Thomas',
        urls: [
          Url.new(
            category: EnumWithCustom<UrlCategory>.new(
              value: 'Work'),
            preferred: true,
            href: 'www.aspose.com')]))])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="save"></a>
## save

Description: Save contact to storage.             

Method call example:
```ruby
api.contact.save(request)
```

### Parameter: request

Description: Create/Update contact request.

See parameter model documentation at [ContactSaveRequest](ContactSaveRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ContactSaveRequest.new(
  storage_file: StorageFileLocation.new(
    file_name: 'contact.vcf',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
  value: ContactDto.new(
    attachments: [
      Attachment.new(
        name: 'attachment.txt',
        base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
    display_name: 'Alex Thomas',
    email_addresses: [
      EmailAddress.new(
        category: EnumWithCustom<EmailAddressCategory>.new(
          value: 'Custom',
          description: 'Partners'),
        display_name: 'Alex Thomas Partners',
        preferred: true,
        address: 'email@aspose.com')],
    gender: 'Male',
    given_name: 'Alex',
    phone_numbers: [
      PhoneNumber.new(
        category: EnumWithCustom<PhoneNumberCategory>.new(
          value: 'Office'),
        number: '+49 211 4247 21',
        preferred: true)],
    profession: 'GENERAL DIRECTOR',
    surname: 'Thomas',
    urls: [
      Url.new(
        category: EnumWithCustom<UrlCategory>.new(
          value: 'Work'),
        preferred: true,
        href: 'www.aspose.com')]))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ContactSaveRequest.new(
  storage_file: StorageFileLocation.new(
    file_name: 'contact.vcf',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
  value: ContactDto.new(
    attachments: [
      Attachment.new(
        name: 'attachment.txt',
        base64_data: 'U29tZSBmaWxlIGNvbnRlbnQ=')],
    display_name: 'Alex Thomas',
    email_addresses: [
      EmailAddress.new(
        category: EnumWithCustom<EmailAddressCategory>.new(
          value: 'Custom',
          description: 'Partners'),
        display_name: 'Alex Thomas Partners',
        preferred: true,
        address: 'email@aspose.com')],
    gender: 'Male',
    given_name: 'Alex',
    phone_numbers: [
      PhoneNumber.new(
        category: EnumWithCustom<PhoneNumberCategory>.new(
          value: 'Office'),
        number: '+49 211 4247 21',
        preferred: true)],
    profession: 'GENERAL DIRECTOR',
    surname: 'Thomas',
    urls: [
      Url.new(
        category: EnumWithCustom<UrlCategory>.new(
          value: 'Work'),
        preferred: true,
        href: 'www.aspose.com')]))

// Call method:
api.contact.save(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

