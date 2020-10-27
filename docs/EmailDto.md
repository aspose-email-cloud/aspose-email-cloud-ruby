# AsposeEmailCloud::EmailDto
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alternate_views** | [**Array&lt;AlternateView&gt;**](AlternateView.md) | Collection of alternate views of message.              | [optional] 
**attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | Email message attachments.              | [optional] 
**bcc** | [**Array&lt;MailAddress&gt;**](MailAddress.md) | BCC recipients.              | [optional] 
**body** | **String** | Email message body as plain text.              | [optional] 
**body_encoding** | **String** | Body encoding.              | [optional] 
**body_type** | **String** | The content type of message body. Enum, available values: PlainText, Html, Rtf | 
**cc** | [**Array&lt;MailAddress&gt;**](MailAddress.md) | CC recipients.              | [optional] 
**date** | **DateTime** | Message date.              | 
**delivery_notification_options** | **Array&lt;String&gt;** | Delivery notifications. Items: Email delivery notification options. Enum, available values: Delay, Never, None, OnFailure, OnSuccess | [optional] 
**from** | [**MailAddress**](MailAddress.md) | From address.              | [optional] 
**headers** | **Hash&lt;String, String&gt;** | Document headers.              | [optional] 
**html_body** | **String** | HTML body.              | [optional] 
**html_body_text** | **String** | Html body as plain text. Read only.              | [optional] 
**is_body_html** | **BOOLEAN** | Indicates whether the message body is in Html.              | 
**is_draft** | **BOOLEAN** | Indicates whether or not a message has been sent.              | 
**is_encrypted** | **BOOLEAN** | Indicates whether the message is encrypted. Read only.              | 
**is_signed** | **BOOLEAN** | Indicates whether the message is signed. Read only.              | 
**linked_resources** | [**Array&lt;LinkedResource&gt;**](LinkedResource.md) | Linked resources of message.              | [optional] 
**message_id** | **String** | Message id.              | [optional] 
**original_is_tnef** | **BOOLEAN** | Indicates whether original EML message is in TNEF format. Read only.              | 
**preferred_text_encoding** | **String** | Preferred encoding.              | [optional] 
**priority** | **String** | Email priority status. Enum, available values: High, Low, Normal | 
**read_receipt_to** | [**Array&lt;MailAddress&gt;**](MailAddress.md) | Read receipt addresses.              | [optional] 
**reply_to_list** | [**Array&lt;MailAddress&gt;**](MailAddress.md) | The list of addresses to reply to for the mail message.              | [optional] 
**reverse_path** | [**MailAddress**](MailAddress.md) | ReversePath address.              | [optional] 
**sender** | [**MailAddress**](MailAddress.md) | Sender address.              | [optional] 
**sensitivity** | **String** | Specifies the sensitivity of a MailMessage. Enum, available values: None, Normal, Personal, Private, CompanyConfidential | 
**subject** | **String** | Message subject.              | [optional] 
**subject_encoding** | **String** | Subject encoding.              | [optional] 
**time_zone_offset** | **Integer** | Coordinated Universal Time (UTC) offset for the message dates. This property defines the time zone difference, between the local time and UTC represented as count of ticks (10 000 per millisecond).              | [optional] 
**to** | [**Array&lt;MailAddress&gt;**](MailAddress.md) | The address collection that contains the recipients of message.              | [optional] 
**x_mailer** | **String** | The X-Mailer the software that created the e-mail message.              | [optional] 



[[Back to Model list]](Models.md) [[Back to README]](README.md)


