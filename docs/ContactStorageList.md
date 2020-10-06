# AsposeEmailCloud::ContactStorageList

Contact models list with corresponding storage locations.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;StorageModelOfContactDto&gt;**](StorageModelOfContactDto.md) |  | [optional] 

Parent class: [ListResponseOfStorageModelOfContactDto](ListResponseOfStorageModelOfContactDto.md)


## Example
```ruby
contact_storage_list = ContactStorageList.new(
  value: [
    StorageModelOfContactDto.new(
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
            href: 'www.aspose.com')]))])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
