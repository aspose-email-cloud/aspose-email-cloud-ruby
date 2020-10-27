# AsposeEmailCloud::EmailClientMultiAccount

Email client virtual account, which contains several accounts             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**receive_accounts** |[**Array&lt;EmailClientAccount&gt;**](EmailClientAccount.md) | Email client receive accounts              | 
**send_account** |[**EmailClientAccount**](EmailClientAccount.md) | Email client send account              | [optional] 


## Example
```ruby
email_client_multi_account = EmailClientMultiAccount.new(
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
      login: 'example@gmail.com')))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
