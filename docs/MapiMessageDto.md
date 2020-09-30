# AsposeEmailCloud::MapiMessageDto

Represents an Outlook Message format document.             

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
**message_body** |**String** | Message text              | [optional] 
**client_submit_time** |**DateTime** | Date and time the message sender submitted a message.              | 
**conversation_topic** |**String** | Topic of the first message in a conversation thread.              | [optional] 
**delivery_time** |**DateTime** | Date and time a message was delivered.              | 
**display_bcc** |**String** | List of the display names of any blind carbon copy (BCC) message recipients, separated by semicolons (;).              | [optional] 
**display_cc** |**String** | List of the display names of any carbon copy (CC) message recipients, separated by semicolons (;).              | [optional] 
**display_name** |**String** | Display name for the message.              | [optional] 
**display_name_prefix** |**String** | Prefix of the display name.              | [optional] 
**display_to** |**String** | List of the display names of the primary (To) message recipients, separated by semicolons (;).              | [optional] 
**flags** |**Array&lt;String&gt;** | Message flags.              Items: Mapi message flags. Enum, available values: MsgFlagZero, MsgFlagRead, MsgFlagUnmodified, MsgFlagSubmit, MsgFlagUnsent, MsgFlagHasAttach, MsgFlagFromMe, MsgFlagAssociated, MsgFlagResend, MsgFlagNotifyRead, MsgFlagNotifyUnread, MsgFlagEverRead, MsgFlagOriginX400, MsgFlagOriginInternet, MsgFlagOriginMiscExt | [optional] 
**headers** |**Hash&lt;String, String&gt;** | Transport message headers              | [optional] 
**internet_message_id** |**String** | Internet message id of the message.              | [optional] 
**message_format** |**String** | Represents outlook message format. Enum, available values: Ascii, Unicode | 
**normalized_subject** |**String** | Normalized subject of the message.              | [optional] 
**read_receipt_requested** |**BOOLEAN** | Value indicating whether the read receipt is requested. | 
**reply_to** |**String** | Reply to names. | [optional] 
**sender_address_type** |**String** | Message sender's e-mail address type. | [optional] 
**sender_email_address** |**String** | Message sender's e-mail address. | [optional] 
**sender_name** |**String** | Message sender's display name. | [optional] 
**sender_smtp_address** |**String** | Message sender's e-mail address. | [optional] 
**sent_representing_address_type** |**String** | Address type for the messaging user represented by the sender. | [optional] 
**sent_representing_email_address** |**String** | E-mail address for the messaging user represented by the sender. | [optional] 
**sent_representing_name** |**String** | Display name for the messaging user represented by the sender. | [optional] 
**sent_representing_smtp_address** |**String** | E-mail address for the messaging user represented by the sender. | [optional] 
**transport_message_headers** |**String** | Transport-specific message envelope information. | [optional] 

Parent class: [MapiMessageItemBaseDto](MapiMessageItemBaseDto.md)


## Example
```ruby
mapi_message_dto = MapiMessageDto.new(
  message_body: 'Some body',
  client_submit_time: DateTime.now,
  delivery_time: DateTime.now,
  display_to: 'To Address',
  flags: [
    'MsgFlagRead',
    'MsgFlagUnsent',
    'MsgFlagHasAttach'],
  normalized_subject: 'Some subject',
  sender_address_type: 'SMTP',
  sender_email_address: 'from@aspose.com',
  sender_name: 'From Address',
  sender_smtp_address: 'from@aspose.com',
  attachments: [
    MapiAttachmentDto.new(
      name: 'some-file.txt',
      data_base64: 'U29tZSBmaWxlIHRleHQ=')],
  body: 'Some body',
  message_class: 'IPM.Note',
  recipients: [
    MapiRecipientDto.new(
      email_address: 'to@aspose.com',
      address_type: 'SMTP',
      display_name: 'To Address',
      recipient_type: 'MapiTo')],
  subject: 'Re: Some subject',
  subject_prefix: 'Re: ')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
