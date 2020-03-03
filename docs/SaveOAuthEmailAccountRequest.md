# models.SaveOAuthEmailAccountRequest
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**host** | **String** | Email account host              | 
**port** | **Integer** | Email account port              | 
**login** | **String** | Email account login              | 
**security_options** | **String** | Email account security mode Enum, available values: None, SSLExplicit, SSLImplicit, SSLAuto, Auto | 
**protocol_type** | **String** | Type of connection protocol. Enum, available values: IMAP, POP3, SMTP, EWS, WebDav | 
**description** | **String** | Email account description              | [optional] 
**storage_file** | [**StorageFileLocation**](StorageFileLocation.md) | A storage file location info to store email account              | 
**client_id** | **String** | OAuth client identifier              | 
**client_secret** | **String** | OAuth client secret              | 
**refresh_token** | **String** | OAuth refresh token              | 
**request_url** | **String** | The url to obtain access token. If not specified, will try to discover from email account host.              | [optional] 

 Parent class: [EmailAccountRequest](EmailAccountRequest.md)

[[Back to Model list]](README.md#documentation-for-models) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to README]](README.md)


