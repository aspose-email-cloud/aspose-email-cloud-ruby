# AsposeEmailCloud::ContactAsFileRequest

Convert contact model to file request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** | Enumerates contact formats. Enum, available values: VCard, WebDav, Msg | 
**value** |[**ContactDto**](ContactDto.md) | Contact model.              | 


## Example
```ruby
contact_as_file_request = ContactAsFileRequest.new(
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
