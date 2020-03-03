# models.EmailClientAccountOauthCredentials
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login** | **String** | Email client account login              | 
**discriminator** | **String** |  | 
**client_id** | **String** | The client ID obtained from the Google Cloud Console during application registration.              | 
**client_secret** | **String** | The client secret obtained during application registration.              | 
**refresh_token** | **String** | OAuth 2.0 refresh token              | 
**request_url** | **String** | The url to obtain access token. If not specified, will try to discover from email client account host.              | [optional] 

 Parent class: [EmailClientAccountCredentials](EmailClientAccountCredentials.md)

[[Back to Model list]](README.md#documentation-for-models) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to README]](README.md)


