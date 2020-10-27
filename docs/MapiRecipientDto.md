# AsposeEmailCloud::MapiRecipientDto

Represents the recipient information in the Microsoft Outlook Message.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**email_address** |**String** | Email address of the message recipient or sender.              | [optional] 
**address_type** |**String** | Type of the address of the message recipient or sender.              | [optional] 
**display_name** |**String** | Display name of the message recipient or sender.              | [optional] 
**recipient_type** |**String** | Represent the PR_RECIPIENT_TYPE property which contains the recipient type for a message recipient. Enum, available values: Unknown, MapiBcc, MapiCc, MapiP1, MapiSubmitted, MapiTo | 


## Example
```ruby
mapi_recipient_dto = MapiRecipientDto.new(
  email_address: 'to@aspose.com',
  address_type: 'SMTP',
  display_name: 'To Address',
  recipient_type: 'MapiTo')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
