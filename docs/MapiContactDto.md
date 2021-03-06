# AsposeEmailCloud::MapiContactDto

Represents outlook contact information.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**attachments** |[**Array&lt;MapiAttachmentDto&gt;**](MapiAttachmentDto.md) | Message item attachments.              | [optional] 
**billing** |**String** | Billing information associated with an item.              | [optional] 
**body** |**String** | Message text.              | [optional] 
**body_html** |**String** | Gets the BodyRtf of the message converted to HTML, if present, otherwise an empty string.              | [optional] 
**body_rtf** |**String** | RTF formatted message text.              | [optional] 
**body_type** |**String** | The content type of message body. Enum, available values: PlainText, Html, Rtf | 
**categories** |**Array&lt;String&gt;** | Contains keywords or categories for the message object.              | [optional] 
**companies** |**Array&lt;String&gt;** | Contains the names of the companies that are associated with an item.              | [optional] 
**item_id** |**String** | The item id, uses with a server.              | [optional] 
**message_class** |**String** | Case-sensitive string that identifies the sender-defined message class, such as IPM.Note. The message class specifies the type, purpose, or content of the message.              | [optional] 
**mileage** |**String** | Contains the mileage information that is associated with an item.              | [optional] 
**recipients** |[**Array&lt;MapiRecipientDto&gt;**](MapiRecipientDto.md) | Recipients of the message.              | [optional] 
**sensitivity** |**String** | Contains values that indicate the message sensitivity. Enum, available values: None, Personal, Private, CompanyConfidential | 
**subject** |**String** | Subject of the message.              | [optional] 
**subject_prefix** |**String** | Subject prefix that typically indicates some action on a message, such as \"FW: \" for forwarding.              | [optional] 
**properties** |[**Array&lt;MapiPropertyDto&gt;**](MapiPropertyDto.md) | List of MAPI properties              | [optional] 
**discriminator** |**String** |  | 
**electronic_addresses** |[**MapiContactElectronicAddressPropertySetDto**](MapiContactElectronicAddressPropertySetDto.md) | Specify properties for up to three different e-mail addresses and three different fax addresses.              | [optional] 
**events** |[**MapiContactEventPropertySetDto**](MapiContactEventPropertySetDto.md) | Specify events associated with a contact.              | [optional] 
**name_info** |[**MapiContactNamePropertySetDto**](MapiContactNamePropertySetDto.md) | The properties are used to specify the name of the person represented by the contact.              | [optional] 
**other_fields** |[**MapiContactOtherPropertySetDto**](MapiContactOtherPropertySetDto.md) | Specify other fields of contact.              | [optional] 
**personal_info** |[**MapiContactPersonalInfoPropertySetDto**](MapiContactPersonalInfoPropertySetDto.md) | Specify other additional contact information.              | [optional] 
**photo** |[**MapiContactPhotoDto**](MapiContactPhotoDto.md) | Contact photo.              | [optional] 
**physical_addresses** |[**MapiContactPhysicalAddressPropertySetDto**](MapiContactPhysicalAddressPropertySetDto.md) | Specify three physical addresses: Home Address, Work Address, and Other Address. One of the addresses can be marked as the Mailing Address.              | [optional] 
**professional_info** |[**MapiContactProfessionalPropertySetDto**](MapiContactProfessionalPropertySetDto.md) | Properties are used to store professional details for the person represented by the contact.              | [optional] 
**telephones** |[**MapiContactTelephonePropertySetDto**](MapiContactTelephonePropertySetDto.md) | Specify telephone numbers for the contact.              | [optional] 

Parent class: [MapiMessageItemBaseDto](MapiMessageItemBaseDto.md)


## Example
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
