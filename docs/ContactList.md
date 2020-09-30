# AsposeEmailCloud::ContactList

List of VCard documents             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;ContactDto&gt;**](ContactDto.md) |  | [optional] 

Parent class: [ListResponseOfContactDto](ListResponseOfContactDto.md)


## Example
```ruby
contact_list = ContactList.new(
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
