# models.AppendEmailModelRq
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_account** | **String** | First account storage file name              | 
**second_account** | **String** | Additional email account (for example, FirstAccount could be IMAP, and second one could be SMTP)              | [optional] 
**storage_folder** | [**StorageFolderLocation**](StorageFolderLocation.md) | Storage folder location of account files              | [optional] 
**folder** | **String** | Email account folder to store a message              | 
**mark_as_sent** | **BOOLEAN** | Mark message as sent              | 
**message** | [**EmailDto**](EmailDto.md) | Email document              | 

 Parent class: [AppendEmailAccountBaseRequest](AppendEmailAccountBaseRequest.md)

[[Back to Model list]](README.md#documentation-for-models) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to README]](README.md)


