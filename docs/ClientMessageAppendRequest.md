# models.ClientMessageAppendRequest
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_location** | [**StorageFileLocation**](StorageFileLocation.md) | Email client account configuration location on storage.              | 
**folder** | **String** | Path to folder on email server to append message to.              | [optional] 
**message** | [**MailMessageBase**](MailMessageBase.md) | Message to append.              | 
**mark_as_sent** | **BOOLEAN** | Determines that appended message should be market as sent or not.              | 

 Parent class: [ClientAccountBaseRequest](ClientAccountBaseRequest.md)

[[Back to Model list]](README.md#documentation-for-models) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to README]](README.md)


