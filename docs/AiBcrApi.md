# AiBcrApi (EmailCloud.ai.bcr)

AI Business card recognition operations.

<a name="parse"></a>
## parse

Description: Parse images to vCard document models             

Returns: List of vCards

Method call example:
```ruby
result = api.ai.bcr.parse(request)
```

### Parameter: request

Description: parse method request.

See parameter model documentation at [AiBcrParseRequest](AiBcrParseRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiBcrParseRequest.new(
    file: File.new('/path/to/image.png'),
    countries: 'us',
    languages: 'en',
    is_single: true)
```

</details>

### Result

Description: List of vCards

Return type: [**ContactList**](ContactList.md)

<details>
    <summary>Result example</summary>

```ruby
result = ContactList.new(
  value: [
    ContactDto.new(
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
          href: 'www.aspose.com')])])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = AiBcrParseRequest.new(
    file: File.new('/path/to/image.png'),
    countries: 'us',
    languages: 'en',
    is_single: true)

// Call method:
result = api.ai.bcr.parse(request)

// Result example:
result = ContactList.new(
  value: [
    ContactDto.new(
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
          href: 'www.aspose.com')])])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="parse_storage"></a>
## parse_storage

Description: Parse images from storage to vCard files             

Returns: List of vCard files located on storage

Method call example:
```ruby
result = api.ai.bcr.parse_storage(request)
```

### Parameter: request

Description: Request with images located on storage

See parameter model documentation at [AiBcrParseStorageRequest](AiBcrParseStorageRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = AiBcrParseStorageRequest.new(
  out_folder: StorageFolderLocation.new(
    storage: 'First Storage',
    folder_path: 'VCard/files/produced/by/parser/will/be/placed/here'),
  images: [
    AiBcrImageStorageFile.new(
      file: StorageFileLocation.new(
        file_name: 'VCardScanImage.jpg',
        storage: 'First Storage',
        folder_path: 'image/location/on/storage'),
      is_single: true)])
```

</details>

### Result

Description: List of vCard files located on storage

Return type: [**StorageFileLocationList**](StorageFileLocationList.md)

<details>
    <summary>Result example</summary>

```ruby
result = StorageFileLocationList.new(
  value: [
    StorageFileLocation.new(
      file_name: 'fileOnStorage.txt',
      storage: 'First Storage',
      folder_path: 'file/location/folder/on/storage')])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = AiBcrParseStorageRequest.new(
  out_folder: StorageFolderLocation.new(
    storage: 'First Storage',
    folder_path: 'VCard/files/produced/by/parser/will/be/placed/here'),
  images: [
    AiBcrImageStorageFile.new(
      file: StorageFileLocation.new(
        file_name: 'VCardScanImage.jpg',
        storage: 'First Storage',
        folder_path: 'image/location/on/storage'),
      is_single: true)])

// Call method:
result = api.ai.bcr.parse_storage(request)

// Result example:
result = StorageFileLocationList.new(
  value: [
    StorageFileLocation.new(
      file_name: 'fileOnStorage.txt',
      storage: 'First Storage',
      folder_path: 'file/location/folder/on/storage')])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

