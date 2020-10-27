# AsposeEmailCloud::ClientAccountSaveMultiRequest

Email client multi account save request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**storage_file** |[**StorageFileLocation**](StorageFileLocation.md) |  | 
**value** |[**EmailClientMultiAccount**](EmailClientMultiAccount.md) |  | 

Parent class: [StorageModelOfEmailClientMultiAccount](StorageModelOfEmailClientMultiAccount.md)


## Example
```ruby
client_account_save_multi_request = ClientAccountSaveMultiRequest.new(
  storage_file: StorageFileLocation.new(
    file_name: 'email.multi.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
  value: EmailClientMultiAccount.new(
    receive_accounts: [
      EmailClientAccount.new(
        host: 'imap.gmail.com',
        port: 993,
        security_options: 'SSLAuto',
        credentials: EmailClientAccountPasswordCredentials.new(
          password: 'password',
          login: 'example@gmail.com')),
      EmailClientAccount.new(
        host: 'exchange@outlook.com',
        port: 443,
        protocol_type: 'EWS',
        credentials: EmailClientAccountOauthCredentials.new(
          client_id: 'clientId',
          client_secret: 'clientSecret',
          refresh_token: 'refreshToken',
          login: 'example@outlook.com'))],
    send_account: EmailClientAccount.new(
      host: 'smtp.gmail.com',
      port: 465,
      security_options: 'SSLAuto',
      protocol_type: 'SMTP',
      credentials: EmailClientAccountPasswordCredentials.new(
        password: 'password',
        login: 'example@gmail.com'))))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
