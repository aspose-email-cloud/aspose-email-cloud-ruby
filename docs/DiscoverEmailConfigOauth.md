# models.DiscoverEmailConfigOauth
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | **String** | Email address to discover.              | 
**fast_processing** | **BOOLEAN** | Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned.              | 
**login** | **String** | Email account login. If not specified, address used as a login.              | [optional] 
**client_id** | **String** | OAuth client id.              | 
**client_secret** | **String** | OAuth client secret.              | 
**refresh_token** | **String** | OAuth refresh token.              | 
**request_url** | **String** | The url to obtain access token. If not specified, will be discovered from email configuration.              | [optional] 

 Parent class: [DiscoverEmailConfigRq](DiscoverEmailConfigRq.md)

[[Back to Model list]](README.md#documentation-for-models) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to README]](README.md)


