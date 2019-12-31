## Documentation for API endpoints

All URIs are relative to *https://api.aspose.cloud/v3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*EmailApi* | [**add_calendar_attachment**](EmailApi.md#add_calendar_attachment) | **PUT** /email/Calendar/{name}/attachments/{attachment} | Adds an attachment to iCalendar file             
*EmailApi* | [**add_contact_attachment**](EmailApi.md#add_contact_attachment) | **PUT** /email/Contact/{format}/{name}/attachments/{attachment} | Add attachment to contact document             
*EmailApi* | [**add_email_attachment**](EmailApi.md#add_email_attachment) | **POST** /email/{fileName}/attachments/{attachmentName} | Adds an attachment to Email document             
*EmailApi* | [**add_mapi_attachment**](EmailApi.md#add_mapi_attachment) | **PUT** /email/Mapi/{name}/attachments/{attachment} | Add attachment to document             
*EmailApi* | [**ai_bcr_ocr**](EmailApi.md#ai_bcr_ocr) | **POST** /email/AiBcr/ocr | Ocr images             
*EmailApi* | [**ai_bcr_ocr_storage**](EmailApi.md#ai_bcr_ocr_storage) | **POST** /email/AiBcr/ocr-storage | Ocr images from storage             
*EmailApi* | [**ai_bcr_parse**](EmailApi.md#ai_bcr_parse) | **POST** /email/AiBcr/parse | Parse images to vCard properties             
*EmailApi* | [**ai_bcr_parse_storage**](EmailApi.md#ai_bcr_parse_storage) | **POST** /email/AiBcr/parse-storage | Parse images from storage to vCard files             
*EmailApi* | [**ai_name_complete**](EmailApi.md#ai_name_complete) | **GET** /email/AiName/complete | The call proposes k most probable names for given starting characters             
*EmailApi* | [**ai_name_expand**](EmailApi.md#ai_name_expand) | **GET** /email/AiName/expand | Expands a person&#39;s name into a list of possible alternatives using options for expanding instructions             
*EmailApi* | [**ai_name_expand_parsed**](EmailApi.md#ai_name_expand_parsed) | **POST** /email/AiName/expand-parsed | Expands a person&#39;s parsed name into a list of possible alternatives using options for expanding instructions             
*EmailApi* | [**ai_name_format**](EmailApi.md#ai_name_format) | **GET** /email/AiName/format | Formats a person&#39;s name in correct case and name order using options for formatting instructions             
*EmailApi* | [**ai_name_format_parsed**](EmailApi.md#ai_name_format_parsed) | **POST** /email/AiName/format-parsed | Formats a person&#39;s parsed name in correct case and name order using options for formatting instructions             
*EmailApi* | [**ai_name_genderize**](EmailApi.md#ai_name_genderize) | **GET** /email/AiName/genderize | Detect person&#39;s gender from name string             
*EmailApi* | [**ai_name_genderize_parsed**](EmailApi.md#ai_name_genderize_parsed) | **POST** /email/AiName/genderize-parsed | Detect person&#39;s gender from parsed name             
*EmailApi* | [**ai_name_match**](EmailApi.md#ai_name_match) | **GET** /email/AiName/match | Compare people&#39;s names. Uses options for comparing instructions             
*EmailApi* | [**ai_name_match_parsed**](EmailApi.md#ai_name_match_parsed) | **POST** /email/AiName/match-parsed | Compare people&#39;s parsed names and attributes. Uses options for comparing instructions             
*EmailApi* | [**ai_name_parse**](EmailApi.md#ai_name_parse) | **GET** /email/AiName/parse | Parse name to components             
*EmailApi* | [**ai_name_parse_email_address**](EmailApi.md#ai_name_parse_email_address) | **GET** /email/AiName/parse-email-address | Parse person&#39;s name out of an email address             
*EmailApi* | [**append_email_message**](EmailApi.md#append_email_message) | **PUT** /email/client/Append | Adds an email from *.eml file to specified folder in email account             
*EmailApi* | [**append_mime_message**](EmailApi.md#append_mime_message) | **PUT** /email/client/AppendMime | Adds an email from MIME to specified folder in email account             
*EmailApi* | [**copy_file**](EmailApi.md#copy_file) | **PUT** /email/storage/file/copy/{srcPath} | Copy file
*EmailApi* | [**copy_folder**](EmailApi.md#copy_folder) | **PUT** /email/storage/folder/copy/{srcPath} | Copy folder
*EmailApi* | [**create_calendar**](EmailApi.md#create_calendar) | **PUT** /email/Calendar/{name} | Create calendar file             
*EmailApi* | [**create_contact**](EmailApi.md#create_contact) | **PUT** /email/Contact/{format}/{name} | Create contact document             
*EmailApi* | [**create_email**](EmailApi.md#create_email) | **PUT** /email/{fileName} | Create an email document             
*EmailApi* | [**create_email_folder**](EmailApi.md#create_email_folder) | **PUT** /email/client/CreateFolder | Create new folder in email account             
*EmailApi* | [**create_folder**](EmailApi.md#create_folder) | **PUT** /email/storage/folder/{path} | Create the folder
*EmailApi* | [**create_mapi**](EmailApi.md#create_mapi) | **PUT** /email/Mapi/{name} | Create new document             
*EmailApi* | [**delete_calendar_property**](EmailApi.md#delete_calendar_property) | **DELETE** /email/Calendar/{name}/properties/{memberName}/{index} | Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}             
*EmailApi* | [**delete_contact_property**](EmailApi.md#delete_contact_property) | **DELETE** /email/Contact/{format}/{name}/properties/{memberName}/{index} | Delete property from indexed property list             
*EmailApi* | [**delete_email_folder**](EmailApi.md#delete_email_folder) | **DELETE** /email/client/DeleteFolder | Delete a folder in email account             
*EmailApi* | [**delete_email_message**](EmailApi.md#delete_email_message) | **DELETE** /email/client/DeleteMessage | Delete message from email account by id             
*EmailApi* | [**delete_file**](EmailApi.md#delete_file) | **DELETE** /email/storage/file/{path} | Delete file
*EmailApi* | [**delete_folder**](EmailApi.md#delete_folder) | **DELETE** /email/storage/folder/{path} | Delete folder
*EmailApi* | [**delete_mapi_attachment**](EmailApi.md#delete_mapi_attachment) | **DELETE** /email/Mapi/{name}/attachments/{attachment} | Remove attachment from document             
*EmailApi* | [**delete_mapi_properties**](EmailApi.md#delete_mapi_properties) | **DELETE** /email/Mapi/{name}/properties | Delete document properties             
*EmailApi* | [**download_file**](EmailApi.md#download_file) | **GET** /email/storage/file/{path} | Download file
*EmailApi* | [**fetch_email_message**](EmailApi.md#fetch_email_message) | **GET** /email/client/Fetch | Fetch message mime from email account             
*EmailApi* | [**get_calendar**](EmailApi.md#get_calendar) | **GET** /email/Calendar/{name}/properties | Get calendar file properties             
*EmailApi* | [**get_calendar_attachment**](EmailApi.md#get_calendar_attachment) | **GET** /email/Calendar/{name}/attachments/{attachment} | Get iCalendar document attachment by name             
*EmailApi* | [**get_calendar_list**](EmailApi.md#get_calendar_list) | **GET** /email/Calendar | Get iCalendar files list in folder on storage             
*EmailApi* | [**get_contact_attachment**](EmailApi.md#get_contact_attachment) | **GET** /email/Contact/{format}/{name}/attachments/{attachment} | Get attachment file by name             
*EmailApi* | [**get_contact_list**](EmailApi.md#get_contact_list) | **GET** /email/Contact/{format} | Get contact list from storage folder             
*EmailApi* | [**get_contact_properties**](EmailApi.md#get_contact_properties) | **GET** /email/Contact/{format}/{name}/properties | Get contact document properties             
*EmailApi* | [**get_disc_usage**](EmailApi.md#get_disc_usage) | **GET** /email/storage/disc | Get disc usage
*EmailApi* | [**get_email**](EmailApi.md#get_email) | **GET** /email/{fileName} | Get email document             
*EmailApi* | [**get_email_attachment**](EmailApi.md#get_email_attachment) | **GET** /email/{fileName}/attachments/{attachment} | Get email attachment by name             
*EmailApi* | [**get_email_property**](EmailApi.md#get_email_property) | **GET** /email/{fileName}/properties/{propertyName} | Get an email document property by its name             
*EmailApi* | [**get_file_versions**](EmailApi.md#get_file_versions) | **GET** /email/storage/version/{path} | Get file versions
*EmailApi* | [**get_files_list**](EmailApi.md#get_files_list) | **GET** /email/storage/folder/{path} | Get all files and folders within a folder
*EmailApi* | [**get_mapi_attachment**](EmailApi.md#get_mapi_attachment) | **GET** /email/Mapi/{name}/attachments/{attachment} | Get document attachment as file stream             
*EmailApi* | [**get_mapi_attachments**](EmailApi.md#get_mapi_attachments) | **GET** /email/Mapi/{name}/attachments | Get document attachment list             
*EmailApi* | [**get_mapi_list**](EmailApi.md#get_mapi_list) | **GET** /email/Mapi | Get document list from storage folder             
*EmailApi* | [**get_mapi_properties**](EmailApi.md#get_mapi_properties) | **GET** /email/Mapi/{name}/properties | Get document properties             
*EmailApi* | [**list_email_folders**](EmailApi.md#list_email_folders) | **GET** /email/client/ListFolders | Get folders list in email account             
*EmailApi* | [**list_email_messages**](EmailApi.md#list_email_messages) | **GET** /email/client/ListMessages | Get messages from folder, filtered by query             
*EmailApi* | [**move_file**](EmailApi.md#move_file) | **PUT** /email/storage/file/move/{srcPath} | Move file
*EmailApi* | [**move_folder**](EmailApi.md#move_folder) | **PUT** /email/storage/folder/move/{srcPath} | Move folder
*EmailApi* | [**object_exists**](EmailApi.md#object_exists) | **GET** /email/storage/exist/{path} | Check if file or folder exists
*EmailApi* | [**save_mail_account**](EmailApi.md#save_mail_account) | **POST** /email/client/SaveMailAccount | Create email account file (*.account) with login/password authentication             
*EmailApi* | [**save_mail_o_auth_account**](EmailApi.md#save_mail_o_auth_account) | **POST** /email/client/SaveMailOAuthAccount | Create email account file (*.account) with OAuth             
*EmailApi* | [**send_email**](EmailApi.md#send_email) | **POST** /email/client/Send | Send an email from *.eml file located on storage             
*EmailApi* | [**send_email_mime**](EmailApi.md#send_email_mime) | **POST** /email/client/SendMime | Send an email specified by MIME in request             
*EmailApi* | [**set_email_property**](EmailApi.md#set_email_property) | **PUT** /email/{fileName}/properties/{propertyName} | Set email document property value             
*EmailApi* | [**set_email_read_flag**](EmailApi.md#set_email_read_flag) | **POST** /email/client/SetReadFlag | Sets \&quot;Message is read\&quot; flag             
*EmailApi* | [**storage_exists**](EmailApi.md#storage_exists) | **GET** /email/storage/{storageName}/exist | Check if storage exists
*EmailApi* | [**update_calendar_properties**](EmailApi.md#update_calendar_properties) | **PUT** /email/Calendar/{name}/properties | Update calendar file properties             
*EmailApi* | [**update_contact_properties**](EmailApi.md#update_contact_properties) | **PUT** /email/Contact/{format}/{name}/properties | Update contact document properties             
*EmailApi* | [**update_mapi_properties**](EmailApi.md#update_mapi_properties) | **PUT** /email/Mapi/{name}/properties | Update document properties             
*EmailApi* | [**upload_file**](EmailApi.md#upload_file) | **PUT** /email/storage/file/{path} | Upload file


## Documentation for Models

 - [models.AccountBaseRequest](AccountBaseRequest.md)
 - [models.AddAttachmentRequest](AddAttachmentRequest.md)
 - [models.AiBcrImage](AiBcrImage.md)
 - [models.AiBcrOcrData](AiBcrOcrData.md)
 - [models.AiBcrOcrDataPart](AiBcrOcrDataPart.md)
 - [models.AiBcrOptions](AiBcrOptions.md)
 - [models.AiBcrRq](AiBcrRq.md)
 - [models.AiNameComponent](AiNameComponent.md)
 - [models.AiNameCulturalContext](AiNameCulturalContext.md)
 - [models.AiNameExtracted](AiNameExtracted.md)
 - [models.AiNameExtractedComponent](AiNameExtractedComponent.md)
 - [models.AiNameFormatted](AiNameFormatted.md)
 - [models.AiNameGenderHypothesis](AiNameGenderHypothesis.md)
 - [models.AiNameMatchResult](AiNameMatchResult.md)
 - [models.AiNameMismatch](AiNameMismatch.md)
 - [models.AiNameParsedRq](AiNameParsedRq.md)
 - [models.AiNameWeighted](AiNameWeighted.md)
 - [models.AiNameWeightedVariants](AiNameWeightedVariants.md)
 - [models.BaseObject](BaseObject.md)
 - [models.CreateEmailRequest](CreateEmailRequest.md)
 - [models.DiscUsage](DiscUsage.md)
 - [models.EmailAccountRequest](EmailAccountRequest.md)
 - [models.EmailDocument](EmailDocument.md)
 - [models.EmailDocumentResponse](EmailDocumentResponse.md)
 - [models.EmailProperties](EmailProperties.md)
 - [models.EmailProperty](EmailProperty.md)
 - [models.EmailPropertyResponse](EmailPropertyResponse.md)
 - [models.Error](Error.md)
 - [models.ErrorDetails](ErrorDetails.md)
 - [models.FileVersions](FileVersions.md)
 - [models.FilesList](FilesList.md)
 - [models.FilesUploadResult](FilesUploadResult.md)
 - [models.HierarchicalObjectRequest](HierarchicalObjectRequest.md)
 - [models.HierarchicalObjectResponse](HierarchicalObjectResponse.md)
 - [models.Link](Link.md)
 - [models.ListResponseOfAiBcrOcrData](ListResponseOfAiBcrOcrData.md)
 - [models.ListResponseOfAiNameComponent](ListResponseOfAiNameComponent.md)
 - [models.ListResponseOfAiNameExtracted](ListResponseOfAiNameExtracted.md)
 - [models.ListResponseOfAiNameGenderHypothesis](ListResponseOfAiNameGenderHypothesis.md)
 - [models.ListResponseOfHierarchicalObject](ListResponseOfHierarchicalObject.md)
 - [models.ListResponseOfHierarchicalObjectResponse](ListResponseOfHierarchicalObjectResponse.md)
 - [models.ListResponseOfMailServerFolder](ListResponseOfMailServerFolder.md)
 - [models.ListResponseOfStorageFileLocation](ListResponseOfStorageFileLocation.md)
 - [models.ListResponseOfString](ListResponseOfString.md)
 - [models.MailServerFolder](MailServerFolder.md)
 - [models.MimeResponse](MimeResponse.md)
 - [models.ObjectExist](ObjectExist.md)
 - [models.SetEmailPropertyRequest](SetEmailPropertyRequest.md)
 - [models.StorageExist](StorageExist.md)
 - [models.StorageFile](StorageFile.md)
 - [models.StorageFolderLocation](StorageFolderLocation.md)
 - [models.ValueResponse](ValueResponse.md)
 - [models.AiBcrBase64Image](AiBcrBase64Image.md)
 - [models.AiBcrBase64Rq](AiBcrBase64Rq.md)
 - [models.AiBcrImageStorageFile](AiBcrImageStorageFile.md)
 - [models.AiBcrStorageImageRq](AiBcrStorageImageRq.md)
 - [models.AiNameParsedMatchRq](AiNameParsedMatchRq.md)
 - [models.AppendEmailAccountBaseRequest](AppendEmailAccountBaseRequest.md)
 - [models.CreateFolderBaseRequest](CreateFolderBaseRequest.md)
 - [models.DeleteFolderBaseRequest](DeleteFolderBaseRequest.md)
 - [models.DeleteMessageBaseRequest](DeleteMessageBaseRequest.md)
 - [models.FileVersion](FileVersion.md)
 - [models.HierarchicalObject](HierarchicalObject.md)
 - [models.IndexedHierarchicalObject](IndexedHierarchicalObject.md)
 - [models.IndexedPrimitiveObject](IndexedPrimitiveObject.md)
 - [models.PrimitiveObject](PrimitiveObject.md)
 - [models.SaveEmailAccountRequest](SaveEmailAccountRequest.md)
 - [models.SaveOAuthEmailAccountRequest](SaveOAuthEmailAccountRequest.md)
 - [models.SendEmailBaseRequest](SendEmailBaseRequest.md)
 - [models.SendEmailMimeBaseRequest](SendEmailMimeBaseRequest.md)
 - [models.SetMessageReadFlagAccountBaseRequest](SetMessageReadFlagAccountBaseRequest.md)
 - [models.StorageFileLocation](StorageFileLocation.md)
 - [models.AiBcrParseStorageRq](AiBcrParseStorageRq.md)
 - [models.AppendEmailBaseRequest](AppendEmailBaseRequest.md)
 - [models.AppendEmailMimeBaseRequest](AppendEmailMimeBaseRequest.md)

