# AsposeEmailCloud::ClientAccountSaveRequest

Email client account save request             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**storage_file** |[**StorageFileLocation**](StorageFileLocation.md) |  | 
**value** |[**EmailClientAccount**](EmailClientAccount.md) |  | 

Parent class: [StorageModelOfEmailClientAccount](StorageModelOfEmailClientAccount.md)


## Example
```ruby
client_account_save_request = ClientAccountSaveRequest.new(
  storage_file: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
  value: EmailClientAccount.new(
    host: 'smtp.example.com',
    port: 465,
    security_options: 'SSLAuto',
    protocol_type: 'SMTP',
    credentials: EmailClientAccountOauthCredentials.new(
      client_id: 'clientId',
      client_secret: 'clientSecret',
      refresh_token: 'refreshToken',
      login: 'example@example.com')))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
