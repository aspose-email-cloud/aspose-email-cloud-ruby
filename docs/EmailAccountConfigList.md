# AsposeEmailCloud::EmailAccountConfigList

List of email accounts             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;EmailAccountConfig&gt;**](EmailAccountConfig.md) |  | [optional] 

Parent class: [ListResponseOfEmailAccountConfig](ListResponseOfEmailAccountConfig.md)


## Example
```ruby
email_account_config_list = EmailAccountConfigList.new(
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
