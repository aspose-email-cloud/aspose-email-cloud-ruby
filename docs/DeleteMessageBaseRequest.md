# models.DeleteMessageBaseRequest
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_account** | **String** | First account storage file name for receiving emails (or universal one)              | 
**second_account** | **String** | Second account storage file name for sending emails (ignored if first is universal)              | [optional] 
**storage_folder** | [**StorageFolderLocation**](StorageFolderLocation.md) | Storage folder location of account files              | [optional] 
**message_id** | **String** | Message identifier              | 
**delete_permanently** | **BOOLEAN** | Specifies that message should be deleted permanently              | 

 Parent class: [AccountBaseRequest](AccountBaseRequest.md)

[[Back to Model list]](README.md#documentation-for-models) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to README]](README.md)


