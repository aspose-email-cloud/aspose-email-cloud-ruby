# AsposeEmailCloud::EmailConfigDiscoverPasswordRequest

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**address** |**String** | Email address to discover.              | 
**fast_processing** |**BOOLEAN** | Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned.              | 
**login** |**String** | Email account login. If not specified, address used as a login.              | [optional] 
**password** |**String** | Email account password.              | 

Parent class: [DiscoverEmailConfigRequest](DiscoverEmailConfigRequest.md)


## Example
```ruby
email_config_discover_password_request = EmailConfigDiscoverPasswordRequest.new(
  password: 'password',
  address: 'example@aspose.com',
  fast_processing: true)
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
