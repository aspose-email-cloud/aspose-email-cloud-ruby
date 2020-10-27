# ClientMessageAppendFileRequest

Request model for ClientMessageApi.append_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account** |**String** |Email account. |
**file** |**File** |Message file to append. |
**storage** |**String** |Storage name where account file located. |[optional] 
**account_storage_folder** |**String** |Folder in storage where account file located. |[optional] 
**format** |**String** |Email file format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |[optional] [default to 0]
**folder** |**String** |Path to folder on email server to append message to. |[optional] 
**mark_as_sent** |**BOOLEAN** |Determines that appended message should be market as sent or not. |[optional] [default to true]

## Example
```ruby
request = ClientMessageAppendFileRequest.new(
    account: 'email.multi.account',
    file: File.new('/path/to/message.eml'),
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    format: 'Eml',
    folder: 'INBOX')
```
