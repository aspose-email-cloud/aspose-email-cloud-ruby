# EmailConfigApi (EmailCloud.email_config)

Email server configuration discovery.

<a name="discover"></a>
## discover

Description: Discover email accounts by email address. Does not validate discovered accounts.             

Returns: Discovered account configurations.

Method call example:
```ruby
result = api.email_config.discover(request)
```

### Parameter: request

Description: discover method request.

See parameter model documentation at [EmailConfigDiscoverRequest](EmailConfigDiscoverRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = EmailConfigDiscoverRequest.new(
    address: 'address@gmail.com')
```

</details>

### Result

Description: Discovered account configurations.

Return type: [**EmailAccountConfigList**](EmailAccountConfigList.md)

<details>
    <summary>Result example</summary>

```ruby
result = EmailAccountConfigList.new(
  value: [
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      host: 'imap.gmail.com',
      port: 993,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'SMTP',
      host: 'smtp.gmail.com',
      port: 465,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'POP3',
      host: 'pop.gmail.com',
      port: 995,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')])])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = EmailConfigDiscoverRequest.new(
    address: 'address@gmail.com')

// Call method:
result = api.email_config.discover(request)

// Result example:
result = EmailAccountConfigList.new(
  value: [
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      host: 'imap.gmail.com',
      port: 993,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'SMTP',
      host: 'smtp.gmail.com',
      port: 465,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'POP3',
      host: 'pop.gmail.com',
      port: 995,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')])])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="discover_oauth"></a>
## discover_oauth

Description: Discover email accounts by email address. Validates discovered accounts using OAuth 2.0.             

Returns: Discovered account configurations.

Method call example:
```ruby
result = api.email_config.discover_oauth(request)
```

### Parameter: request

Description: Discover email configuration request.

See parameter model documentation at [EmailConfigDiscoverOauthRequest](EmailConfigDiscoverOauthRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = EmailConfigDiscoverOauthRequest.new(
  client_id: 'ClientId',
  client_secret: 'ClientSecret',
  refresh_token: 'RefreshToken',
  address: 'example@aspose.com',
  fast_processing: true)
```

</details>

### Result

Description: Discovered account configurations.

Return type: [**EmailAccountConfigList**](EmailAccountConfigList.md)

<details>
    <summary>Result example</summary>

```ruby
result = EmailAccountConfigList.new(
  value: [
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      host: 'imap.gmail.com',
      port: 993,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'SMTP',
      host: 'smtp.gmail.com',
      port: 465,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'POP3',
      host: 'pop.gmail.com',
      port: 995,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')])])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = EmailConfigDiscoverOauthRequest.new(
  client_id: 'ClientId',
  client_secret: 'ClientSecret',
  refresh_token: 'RefreshToken',
  address: 'example@aspose.com',
  fast_processing: true)

// Call method:
result = api.email_config.discover_oauth(request)

// Result example:
result = EmailAccountConfigList.new(
  value: [
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      host: 'imap.gmail.com',
      port: 993,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'SMTP',
      host: 'smtp.gmail.com',
      port: 465,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'POP3',
      host: 'pop.gmail.com',
      port: 995,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')])])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="discover_password"></a>
## discover_password

Description: Discover email accounts by email address. Validates discovered accounts using login and password.             

Returns: Discovered account configurations.

Method call example:
```ruby
result = api.email_config.discover_password(request)
```

### Parameter: request

Description: Discover email configuration request.

See parameter model documentation at [EmailConfigDiscoverPasswordRequest](EmailConfigDiscoverPasswordRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = EmailConfigDiscoverPasswordRequest.new(
  password: 'password',
  address: 'example@aspose.com',
  fast_processing: true)
```

</details>

### Result

Description: Discovered account configurations.

Return type: [**EmailAccountConfigList**](EmailAccountConfigList.md)

<details>
    <summary>Result example</summary>

```ruby
result = EmailAccountConfigList.new(
  value: [
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      host: 'imap.gmail.com',
      port: 993,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'SMTP',
      host: 'smtp.gmail.com',
      port: 465,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'POP3',
      host: 'pop.gmail.com',
      port: 995,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')])])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud.new(app_key, app_sid)

// Prepare parameters:
request = EmailConfigDiscoverPasswordRequest.new(
  password: 'password',
  address: 'example@aspose.com',
  fast_processing: true)

// Call method:
result = api.email_config.discover_password(request)

// Result example:
result = EmailAccountConfigList.new(
  value: [
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      host: 'imap.gmail.com',
      port: 993,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'SMTP',
      host: 'smtp.gmail.com',
      port: 465,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')]),
    EmailAccountConfig.new(
      display_name: 'Google Mail',
      protocol_type: 'POP3',
      host: 'pop.gmail.com',
      port: 995,
      socket_type: 'SSLAuto',
      authentication_types: [
        'PasswordCleartext',
        'OAuth2'],
      extra_info: [
        NameValuePair.new(
          name: 'Enable: You need to enable IMAP access',
          value: 'https://mail.google.com/mail/?ui=2&shva=1#settings/fwdandpop')])])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

