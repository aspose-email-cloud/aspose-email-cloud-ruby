# ClientMessageListRequest

Request model for ClientMessageApi.list

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**folder** |**String** |A folder in email account |
**account** |**String** |Email account |
**query_string** |**String** |A MailQuery search string |[optional] 
**storage** |**String** |Storage name where account file located |[optional] 
**account_storage_folder** |**String** |Folder in storage where account file located |[optional] 
**recursive** |**BOOLEAN** |Specifies that should message be searched in subfolders recursively |[optional] [default to false]
**type** |**String** |MailMessageBase type. Using this property you can get messages in different formats (as EmailDto, MapiMessageDto or a file represented as Base64 string).              Enum, available values: Dto, Mapi, Base64 |[optional] [default to 0]
**format** |**String** |Base64 data format. Used only if type is set to Base64. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |[optional] [default to 0]

## Example
```ruby
request = ClientMessageListRequest.new(
    folder: 'INBOX',
    account: 'email.multi.account',
    query_string: '('From' Contains '.com')',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    recursive: true,
    type: 'Dto',
    format: 'Eml')
```
