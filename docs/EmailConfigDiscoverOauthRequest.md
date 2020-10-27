# AsposeEmailCloud::EmailConfigDiscoverOauthRequest

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**address** |**String** | Email address to discover.              | 
**fast_processing** |**BOOLEAN** | Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned.              | 
**login** |**String** | Email account login. If not specified, address used as a login.              | [optional] 
**client_id** |**String** | OAuth client id.              | 
**client_secret** |**String** | OAuth client secret.              | 
**refresh_token** |**String** | OAuth refresh token.              | 
**request_url** |**String** | The url to obtain access token. If not specified, will be discovered from email configuration.              | [optional] 

Parent class: [DiscoverEmailConfigRequest](DiscoverEmailConfigRequest.md)


## Example
```ruby
email_config_discover_oauth_request = EmailConfigDiscoverOauthRequest.new(
  client_id: 'ClientId',
  client_secret: 'ClientSecret',
  refresh_token: 'RefreshToken',
  address: 'example@aspose.com',
  fast_processing: true)
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
