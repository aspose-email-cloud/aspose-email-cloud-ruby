# models.MoveEmailMessageRq
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_account** | **String** | First account storage file name              | 
**second_account** | **String** | Additional email account (for example, FirstAccount could be IMAP, and second one could be SMTP)              | [optional] 
**storage_folder** | [**StorageFolderLocation**](StorageFolderLocation.md) | Storage folder location of account files              | [optional] 
**message_id** | **String** | Message identifier              | [optional] 
**source_folder** | **String** | Message source folder. Account root folder by default              | [optional] 
**destination_folder** | **String** | Folder in email account to move message to              | [optional] 

 Parent class: [AccountBaseRequest](AccountBaseRequest.md)

[[Back to Model list]](README.md#documentation-for-models) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to README]](README.md)


