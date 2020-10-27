# ClientMessageSendFileRequest

Request model for ClientMessageApi.send_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**account** |**String** |Email account |
**file** |**File** |File to send |
**storage** |**String** |Storage name where account file located. |[optional] 
**account_storage_folder** |**String** |Folder in storage where account file located. |[optional] 
**format** |**String** |Email file format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |[optional] [default to 0]

## Example
```ruby
request = ClientMessageSendFileRequest.new(
    account: 'email.multi.account',
    file: File.new('/path/to/message.eml'),
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage',
    format: 'Eml')
```
