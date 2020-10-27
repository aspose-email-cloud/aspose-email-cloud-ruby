# AsposeEmailCloud::ContactSaveRequest

Contact save to storage request             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**storage_file** |[**StorageFileLocation**](StorageFileLocation.md) |  | 
**value** |[**ContactDto**](ContactDto.md) |  | 
**format** |**String** | Enumerates contact formats. Enum, available values: VCard, WebDav, Msg | 

Parent class: [StorageModelOfContactDto](StorageModelOfContactDto.md)


## Example
```ruby
contact_save_request = ContactSaveRequest.new(
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
        href: 'www.aspose.com')]))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
