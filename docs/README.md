## Documentation for API endpoints

All URIs are relative to *https://api.aspose.cloud/v3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*EmailApi* | [**add_calendar_attachment**](EmailApi.md#add_calendar_attachment) | **PUT** /email/Calendar/{name}/attachments/{attachment} | Adds an attachment to iCalendar file             
*EmailApi* | [**add_calendar_attachment_async**](EmailApi.md#add_calendar_attachment_async) | **PUT** /email/Calendar/{name}/attachments/{attachment} | Adds an attachment to iCalendar file             
*EmailApi* | [**add_contact_attachment**](EmailApi.md#add_contact_attachment) | **PUT** /email/Contact/{format}/{name}/attachments/{attachment} | Add attachment to contact document             
*EmailApi* | [**add_contact_attachment_async**](EmailApi.md#add_contact_attachment_async) | **PUT** /email/Contact/{format}/{name}/attachments/{attachment} | Add attachment to contact document             
*EmailApi* | [**add_email_attachment**](EmailApi.md#add_email_attachment) | **POST** /email/{fileName}/attachments/{attachmentName} | Adds an attachment to Email document             
*EmailApi* | [**add_email_attachment_async**](EmailApi.md#add_email_attachment_async) | **POST** /email/{fileName}/attachments/{attachmentName} | Adds an attachment to Email document             
*EmailApi* | [**add_mapi_attachment**](EmailApi.md#add_mapi_attachment) | **PUT** /email/Mapi/{name}/attachments/{attachment} | Add attachment to document             
*EmailApi* | [**add_mapi_attachment_async**](EmailApi.md#add_mapi_attachment_async) | **PUT** /email/Mapi/{name}/attachments/{attachment} | Add attachment to document             
*EmailApi* | [**ai_bcr_ocr**](EmailApi.md#ai_bcr_ocr) | **POST** /email/AiBcr/ocr | Ocr images             
*EmailApi* | [**ai_bcr_ocr_async**](EmailApi.md#ai_bcr_ocr_async) | **POST** /email/AiBcr/ocr | Ocr images             
*EmailApi* | [**ai_bcr_ocr_storage**](EmailApi.md#ai_bcr_ocr_storage) | **POST** /email/AiBcr/ocr-storage | Ocr images from storage             
*EmailApi* | [**ai_bcr_ocr_storage_async**](EmailApi.md#ai_bcr_ocr_storage_async) | **POST** /email/AiBcr/ocr-storage | Ocr images from storage             
*EmailApi* | [**ai_bcr_parse**](EmailApi.md#ai_bcr_parse) | **POST** /email/AiBcr/parse | Parse images to vCard properties             
*EmailApi* | [**ai_bcr_parse_async**](EmailApi.md#ai_bcr_parse_async) | **POST** /email/AiBcr/parse | Parse images to vCard properties             
*EmailApi* | [**ai_bcr_parse_ocr_data**](EmailApi.md#ai_bcr_parse_ocr_data) | **POST** /email/AiBcr/parse-ocr-data | Parse OCR data to vCard properties             
*EmailApi* | [**ai_bcr_parse_ocr_data_async**](EmailApi.md#ai_bcr_parse_ocr_data_async) | **POST** /email/AiBcr/parse-ocr-data | Parse OCR data to vCard properties             
*EmailApi* | [**ai_bcr_parse_ocr_data_storage**](EmailApi.md#ai_bcr_parse_ocr_data_storage) | **POST** /email/AiBcr/parse-ocr-data-storage | Parse vCards from OCR data and save them to Storage             
*EmailApi* | [**ai_bcr_parse_ocr_data_storage_async**](EmailApi.md#ai_bcr_parse_ocr_data_storage_async) | **POST** /email/AiBcr/parse-ocr-data-storage | Parse vCards from OCR data and save them to Storage             
*EmailApi* | [**ai_bcr_parse_storage**](EmailApi.md#ai_bcr_parse_storage) | **POST** /email/AiBcr/parse-storage | Parse images from storage to vCard files             
*EmailApi* | [**ai_bcr_parse_storage_async**](EmailApi.md#ai_bcr_parse_storage_async) | **POST** /email/AiBcr/parse-storage | Parse images from storage to vCard files             
*EmailApi* | [**ai_name_complete**](EmailApi.md#ai_name_complete) | **GET** /email/AiName/complete | The call proposes k most probable names for given starting characters             
*EmailApi* | [**ai_name_complete_async**](EmailApi.md#ai_name_complete_async) | **GET** /email/AiName/complete | The call proposes k most probable names for given starting characters             
*EmailApi* | [**ai_name_expand**](EmailApi.md#ai_name_expand) | **GET** /email/AiName/expand | Expands a person&#39;s name into a list of possible alternatives using options for expanding instructions             
*EmailApi* | [**ai_name_expand_async**](EmailApi.md#ai_name_expand_async) | **GET** /email/AiName/expand | Expands a person&#39;s name into a list of possible alternatives using options for expanding instructions             
*EmailApi* | [**ai_name_expand_parsed**](EmailApi.md#ai_name_expand_parsed) | **POST** /email/AiName/expand-parsed | Expands a person&#39;s parsed name into a list of possible alternatives using options for expanding instructions             
*EmailApi* | [**ai_name_expand_parsed_async**](EmailApi.md#ai_name_expand_parsed_async) | **POST** /email/AiName/expand-parsed | Expands a person&#39;s parsed name into a list of possible alternatives using options for expanding instructions             
*EmailApi* | [**ai_name_format**](EmailApi.md#ai_name_format) | **GET** /email/AiName/format | Formats a person&#39;s name in correct case and name order using options for formatting instructions             
*EmailApi* | [**ai_name_format_async**](EmailApi.md#ai_name_format_async) | **GET** /email/AiName/format | Formats a person&#39;s name in correct case and name order using options for formatting instructions             
*EmailApi* | [**ai_name_format_parsed**](EmailApi.md#ai_name_format_parsed) | **POST** /email/AiName/format-parsed | Formats a person&#39;s parsed name in correct case and name order using options for formatting instructions             
*EmailApi* | [**ai_name_format_parsed_async**](EmailApi.md#ai_name_format_parsed_async) | **POST** /email/AiName/format-parsed | Formats a person&#39;s parsed name in correct case and name order using options for formatting instructions             
*EmailApi* | [**ai_name_genderize**](EmailApi.md#ai_name_genderize) | **GET** /email/AiName/genderize | Detect person&#39;s gender from name string             
*EmailApi* | [**ai_name_genderize_async**](EmailApi.md#ai_name_genderize_async) | **GET** /email/AiName/genderize | Detect person&#39;s gender from name string             
*EmailApi* | [**ai_name_genderize_parsed**](EmailApi.md#ai_name_genderize_parsed) | **POST** /email/AiName/genderize-parsed | Detect person&#39;s gender from parsed name             
*EmailApi* | [**ai_name_genderize_parsed_async**](EmailApi.md#ai_name_genderize_parsed_async) | **POST** /email/AiName/genderize-parsed | Detect person&#39;s gender from parsed name             
*EmailApi* | [**ai_name_match**](EmailApi.md#ai_name_match) | **GET** /email/AiName/match | Compare people&#39;s names. Uses options for comparing instructions             
*EmailApi* | [**ai_name_match_async**](EmailApi.md#ai_name_match_async) | **GET** /email/AiName/match | Compare people&#39;s names. Uses options for comparing instructions             
*EmailApi* | [**ai_name_match_parsed**](EmailApi.md#ai_name_match_parsed) | **POST** /email/AiName/match-parsed | Compare people&#39;s parsed names and attributes. Uses options for comparing instructions             
*EmailApi* | [**ai_name_match_parsed_async**](EmailApi.md#ai_name_match_parsed_async) | **POST** /email/AiName/match-parsed | Compare people&#39;s parsed names and attributes. Uses options for comparing instructions             
*EmailApi* | [**ai_name_parse**](EmailApi.md#ai_name_parse) | **GET** /email/AiName/parse | Parse name to components             
*EmailApi* | [**ai_name_parse_async**](EmailApi.md#ai_name_parse_async) | **GET** /email/AiName/parse | Parse name to components             
*EmailApi* | [**ai_name_parse_email_address**](EmailApi.md#ai_name_parse_email_address) | **GET** /email/AiName/parse-email-address | Parse person&#39;s name out of an email address             
*EmailApi* | [**ai_name_parse_email_address_async**](EmailApi.md#ai_name_parse_email_address_async) | **GET** /email/AiName/parse-email-address | Parse person&#39;s name out of an email address             
*EmailApi* | [**append_email_message**](EmailApi.md#append_email_message) | **PUT** /email/client/Append | Adds an email from *.eml file to specified folder in email account             
*EmailApi* | [**append_email_message_async**](EmailApi.md#append_email_message_async) | **PUT** /email/client/Append | Adds an email from *.eml file to specified folder in email account             
*EmailApi* | [**append_mime_message**](EmailApi.md#append_mime_message) | **PUT** /email/client/AppendMime | Adds an email from MIME to specified folder in email account             
*EmailApi* | [**append_mime_message_async**](EmailApi.md#append_mime_message_async) | **PUT** /email/client/AppendMime | Adds an email from MIME to specified folder in email account             
*EmailApi* | [**copy_file**](EmailApi.md#copy_file) | **PUT** /email/storage/file/copy/{srcPath} | Copy file
*EmailApi* | [**copy_file_async**](EmailApi.md#copy_file_async) | **PUT** /email/storage/file/copy/{srcPath} | Copy file
*EmailApi* | [**copy_folder**](EmailApi.md#copy_folder) | **PUT** /email/storage/folder/copy/{srcPath} | Copy folder
*EmailApi* | [**copy_folder_async**](EmailApi.md#copy_folder_async) | **PUT** /email/storage/folder/copy/{srcPath} | Copy folder
*EmailApi* | [**create_calendar**](EmailApi.md#create_calendar) | **PUT** /email/Calendar/{name} | Create calendar file             
*EmailApi* | [**create_calendar_async**](EmailApi.md#create_calendar_async) | **PUT** /email/Calendar/{name} | Create calendar file             
*EmailApi* | [**create_contact**](EmailApi.md#create_contact) | **PUT** /email/Contact/{format}/{name} | Create contact document             
*EmailApi* | [**create_contact_async**](EmailApi.md#create_contact_async) | **PUT** /email/Contact/{format}/{name} | Create contact document             
*EmailApi* | [**create_email**](EmailApi.md#create_email) | **PUT** /email/{fileName} | Create an email document             
*EmailApi* | [**create_email_async**](EmailApi.md#create_email_async) | **PUT** /email/{fileName} | Create an email document             
*EmailApi* | [**create_email_folder**](EmailApi.md#create_email_folder) | **PUT** /email/client/CreateFolder | Create new folder in email account             
*EmailApi* | [**create_email_folder_async**](EmailApi.md#create_email_folder_async) | **PUT** /email/client/CreateFolder | Create new folder in email account             
*EmailApi* | [**create_folder**](EmailApi.md#create_folder) | **PUT** /email/storage/folder/{path} | Create the folder
*EmailApi* | [**create_folder_async**](EmailApi.md#create_folder_async) | **PUT** /email/storage/folder/{path} | Create the folder
*EmailApi* | [**create_mapi**](EmailApi.md#create_mapi) | **PUT** /email/Mapi/{name} | Create new document             
*EmailApi* | [**create_mapi_async**](EmailApi.md#create_mapi_async) | **PUT** /email/Mapi/{name} | Create new document             
*EmailApi* | [**delete_calendar_property**](EmailApi.md#delete_calendar_property) | **DELETE** /email/Calendar/{name}/properties/{memberName}/{index} | Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}             
*EmailApi* | [**delete_calendar_property_async**](EmailApi.md#delete_calendar_property_async) | **DELETE** /email/Calendar/{name}/properties/{memberName}/{index} | Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}             
*EmailApi* | [**delete_contact_property**](EmailApi.md#delete_contact_property) | **DELETE** /email/Contact/{format}/{name}/properties/{memberName}/{index} | Delete property from indexed property list             
*EmailApi* | [**delete_contact_property_async**](EmailApi.md#delete_contact_property_async) | **DELETE** /email/Contact/{format}/{name}/properties/{memberName}/{index} | Delete property from indexed property list             
*EmailApi* | [**delete_email_folder**](EmailApi.md#delete_email_folder) | **DELETE** /email/client/DeleteFolder | Delete a folder in email account             
*EmailApi* | [**delete_email_folder_async**](EmailApi.md#delete_email_folder_async) | **DELETE** /email/client/DeleteFolder | Delete a folder in email account             
*EmailApi* | [**delete_email_message**](EmailApi.md#delete_email_message) | **DELETE** /email/client/DeleteMessage | Delete message from email account by id             
*EmailApi* | [**delete_email_message_async**](EmailApi.md#delete_email_message_async) | **DELETE** /email/client/DeleteMessage | Delete message from email account by id             
*EmailApi* | [**delete_file**](EmailApi.md#delete_file) | **DELETE** /email/storage/file/{path} | Delete file
*EmailApi* | [**delete_file_async**](EmailApi.md#delete_file_async) | **DELETE** /email/storage/file/{path} | Delete file
*EmailApi* | [**delete_folder**](EmailApi.md#delete_folder) | **DELETE** /email/storage/folder/{path} | Delete folder
*EmailApi* | [**delete_folder_async**](EmailApi.md#delete_folder_async) | **DELETE** /email/storage/folder/{path} | Delete folder
*EmailApi* | [**delete_mapi_attachment**](EmailApi.md#delete_mapi_attachment) | **DELETE** /email/Mapi/{name}/attachments/{attachment} | Remove attachment from document             
*EmailApi* | [**delete_mapi_attachment_async**](EmailApi.md#delete_mapi_attachment_async) | **DELETE** /email/Mapi/{name}/attachments/{attachment} | Remove attachment from document             
*EmailApi* | [**delete_mapi_properties**](EmailApi.md#delete_mapi_properties) | **DELETE** /email/Mapi/{name}/properties | Delete document properties             
*EmailApi* | [**delete_mapi_properties_async**](EmailApi.md#delete_mapi_properties_async) | **DELETE** /email/Mapi/{name}/properties | Delete document properties             
*EmailApi* | [**download_file**](EmailApi.md#download_file) | **GET** /email/storage/file/{path} | Download file
*EmailApi* | [**download_file_async**](EmailApi.md#download_file_async) | **GET** /email/storage/file/{path} | Download file
*EmailApi* | [**fetch_email_message**](EmailApi.md#fetch_email_message) | **GET** /email/client/Fetch | Fetch message mime from email account             
*EmailApi* | [**fetch_email_message_async**](EmailApi.md#fetch_email_message_async) | **GET** /email/client/Fetch | Fetch message mime from email account             
*EmailApi* | [**get_calendar**](EmailApi.md#get_calendar) | **GET** /email/Calendar/{name}/properties | Get calendar file properties             
*EmailApi* | [**get_calendar_async**](EmailApi.md#get_calendar_async) | **GET** /email/Calendar/{name}/properties | Get calendar file properties             
*EmailApi* | [**get_calendar_attachment**](EmailApi.md#get_calendar_attachment) | **GET** /email/Calendar/{name}/attachments/{attachment} | Get iCalendar document attachment by name             
*EmailApi* | [**get_calendar_attachment_async**](EmailApi.md#get_calendar_attachment_async) | **GET** /email/Calendar/{name}/attachments/{attachment} | Get iCalendar document attachment by name             
*EmailApi* | [**get_calendar_list**](EmailApi.md#get_calendar_list) | **GET** /email/Calendar | Get iCalendar files list in folder on storage             
*EmailApi* | [**get_calendar_list_async**](EmailApi.md#get_calendar_list_async) | **GET** /email/Calendar | Get iCalendar files list in folder on storage             
*EmailApi* | [**get_contact_attachment**](EmailApi.md#get_contact_attachment) | **GET** /email/Contact/{format}/{name}/attachments/{attachment} | Get attachment file by name             
*EmailApi* | [**get_contact_attachment_async**](EmailApi.md#get_contact_attachment_async) | **GET** /email/Contact/{format}/{name}/attachments/{attachment} | Get attachment file by name             
*EmailApi* | [**get_contact_list**](EmailApi.md#get_contact_list) | **GET** /email/Contact/{format} | Get contact list from storage folder             
*EmailApi* | [**get_contact_list_async**](EmailApi.md#get_contact_list_async) | **GET** /email/Contact/{format} | Get contact list from storage folder             
*EmailApi* | [**get_contact_properties**](EmailApi.md#get_contact_properties) | **GET** /email/Contact/{format}/{name}/properties | Get contact document properties             
*EmailApi* | [**get_contact_properties_async**](EmailApi.md#get_contact_properties_async) | **GET** /email/Contact/{format}/{name}/properties | Get contact document properties             
*EmailApi* | [**get_disc_usage**](EmailApi.md#get_disc_usage) | **GET** /email/storage/disc | Get disc usage
*EmailApi* | [**get_disc_usage_async**](EmailApi.md#get_disc_usage_async) | **GET** /email/storage/disc | Get disc usage
*EmailApi* | [**get_email**](EmailApi.md#get_email) | **GET** /email/{fileName} | Get email document             
*EmailApi* | [**get_email_async**](EmailApi.md#get_email_async) | **GET** /email/{fileName} | Get email document             
*EmailApi* | [**get_email_attachment**](EmailApi.md#get_email_attachment) | **GET** /email/{fileName}/attachments/{attachment} | Get email attachment by name             
*EmailApi* | [**get_email_attachment_async**](EmailApi.md#get_email_attachment_async) | **GET** /email/{fileName}/attachments/{attachment} | Get email attachment by name             
*EmailApi* | [**get_email_property**](EmailApi.md#get_email_property) | **GET** /email/{fileName}/properties/{propertyName} | Get an email document property by its name             
*EmailApi* | [**get_email_property_async**](EmailApi.md#get_email_property_async) | **GET** /email/{fileName}/properties/{propertyName} | Get an email document property by its name             
*EmailApi* | [**get_file_versions**](EmailApi.md#get_file_versions) | **GET** /email/storage/version/{path} | Get file versions
*EmailApi* | [**get_file_versions_async**](EmailApi.md#get_file_versions_async) | **GET** /email/storage/version/{path} | Get file versions
*EmailApi* | [**get_files_list**](EmailApi.md#get_files_list) | **GET** /email/storage/folder/{path} | Get all files and folders within a folder
*EmailApi* | [**get_files_list_async**](EmailApi.md#get_files_list_async) | **GET** /email/storage/folder/{path} | Get all files and folders within a folder
*EmailApi* | [**get_mapi_attachment**](EmailApi.md#get_mapi_attachment) | **GET** /email/Mapi/{name}/attachments/{attachment} | Get document attachment as file stream             
*EmailApi* | [**get_mapi_attachment_async**](EmailApi.md#get_mapi_attachment_async) | **GET** /email/Mapi/{name}/attachments/{attachment} | Get document attachment as file stream             
*EmailApi* | [**get_mapi_attachments**](EmailApi.md#get_mapi_attachments) | **GET** /email/Mapi/{name}/attachments | Get document attachment list             
*EmailApi* | [**get_mapi_attachments_async**](EmailApi.md#get_mapi_attachments_async) | **GET** /email/Mapi/{name}/attachments | Get document attachment list             
*EmailApi* | [**get_mapi_list**](EmailApi.md#get_mapi_list) | **GET** /email/Mapi | Get document list from storage folder             
*EmailApi* | [**get_mapi_list_async**](EmailApi.md#get_mapi_list_async) | **GET** /email/Mapi | Get document list from storage folder             
*EmailApi* | [**get_mapi_properties**](EmailApi.md#get_mapi_properties) | **GET** /email/Mapi/{name}/properties | Get document properties             
*EmailApi* | [**get_mapi_properties_async**](EmailApi.md#get_mapi_properties_async) | **GET** /email/Mapi/{name}/properties | Get document properties             
*EmailApi* | [**list_email_folders**](EmailApi.md#list_email_folders) | **GET** /email/client/ListFolders | Get folders list in email account             
*EmailApi* | [**list_email_folders_async**](EmailApi.md#list_email_folders_async) | **GET** /email/client/ListFolders | Get folders list in email account             
*EmailApi* | [**list_email_messages**](EmailApi.md#list_email_messages) | **GET** /email/client/ListMessages | Get messages from folder, filtered by query             
*EmailApi* | [**list_email_messages_async**](EmailApi.md#list_email_messages_async) | **GET** /email/client/ListMessages | Get messages from folder, filtered by query             
*EmailApi* | [**move_file**](EmailApi.md#move_file) | **PUT** /email/storage/file/move/{srcPath} | Move file
*EmailApi* | [**move_file_async**](EmailApi.md#move_file_async) | **PUT** /email/storage/file/move/{srcPath} | Move file
*EmailApi* | [**move_folder**](EmailApi.md#move_folder) | **PUT** /email/storage/folder/move/{srcPath} | Move folder
*EmailApi* | [**move_folder_async**](EmailApi.md#move_folder_async) | **PUT** /email/storage/folder/move/{srcPath} | Move folder
*EmailApi* | [**object_exists**](EmailApi.md#object_exists) | **GET** /email/storage/exist/{path} | Check if file or folder exists
*EmailApi* | [**object_exists_async**](EmailApi.md#object_exists_async) | **GET** /email/storage/exist/{path} | Check if file or folder exists
*EmailApi* | [**save_mail_account**](EmailApi.md#save_mail_account) | **POST** /email/client/SaveMailAccount | Create email account file (*.account) with login/password authentication             
*EmailApi* | [**save_mail_account_async**](EmailApi.md#save_mail_account_async) | **POST** /email/client/SaveMailAccount | Create email account file (*.account) with login/password authentication             
*EmailApi* | [**save_mail_o_auth_account**](EmailApi.md#save_mail_o_auth_account) | **POST** /email/client/SaveMailOAuthAccount | Create email account file (*.account) with OAuth             
*EmailApi* | [**save_mail_o_auth_account_async**](EmailApi.md#save_mail_o_auth_account_async) | **POST** /email/client/SaveMailOAuthAccount | Create email account file (*.account) with OAuth             
*EmailApi* | [**send_email**](EmailApi.md#send_email) | **POST** /email/client/Send | Send an email from *.eml file located on storage             
*EmailApi* | [**send_email_async**](EmailApi.md#send_email_async) | **POST** /email/client/Send | Send an email from *.eml file located on storage             
*EmailApi* | [**send_email_mime**](EmailApi.md#send_email_mime) | **POST** /email/client/SendMime | Send an email specified by MIME in request             
*EmailApi* | [**send_email_mime_async**](EmailApi.md#send_email_mime_async) | **POST** /email/client/SendMime | Send an email specified by MIME in request             
*EmailApi* | [**set_email_property**](EmailApi.md#set_email_property) | **PUT** /email/{fileName}/properties/{propertyName} | Set email document property value             
*EmailApi* | [**set_email_property_async**](EmailApi.md#set_email_property_async) | **PUT** /email/{fileName}/properties/{propertyName} | Set email document property value             
*EmailApi* | [**set_email_read_flag**](EmailApi.md#set_email_read_flag) | **POST** /email/client/SetReadFlag | Sets \&quot;Message is read\&quot; flag             
*EmailApi* | [**set_email_read_flag_async**](EmailApi.md#set_email_read_flag_async) | **POST** /email/client/SetReadFlag | Sets \&quot;Message is read\&quot; flag             
*EmailApi* | [**storage_exists**](EmailApi.md#storage_exists) | **GET** /email/storage/{storageName}/exist | Check if storage exists
*EmailApi* | [**storage_exists_async**](EmailApi.md#storage_exists_async) | **GET** /email/storage/{storageName}/exist | Check if storage exists
*EmailApi* | [**update_calendar_properties**](EmailApi.md#update_calendar_properties) | **PUT** /email/Calendar/{name}/properties | Update calendar file properties             
*EmailApi* | [**update_calendar_properties_async**](EmailApi.md#update_calendar_properties_async) | **PUT** /email/Calendar/{name}/properties | Update calendar file properties             
*EmailApi* | [**update_contact_properties**](EmailApi.md#update_contact_properties) | **PUT** /email/Contact/{format}/{name}/properties | Update contact document properties             
*EmailApi* | [**update_contact_properties_async**](EmailApi.md#update_contact_properties_async) | **PUT** /email/Contact/{format}/{name}/properties | Update contact document properties             
*EmailApi* | [**update_mapi_properties**](EmailApi.md#update_mapi_properties) | **PUT** /email/Mapi/{name}/properties | Update document properties             
*EmailApi* | [**update_mapi_properties_async**](EmailApi.md#update_mapi_properties_async) | **PUT** /email/Mapi/{name}/properties | Update document properties             
*EmailApi* | [**upload_file**](EmailApi.md#upload_file) | **PUT** /email/storage/file/{path} | Upload file
*EmailApi* | [**upload_file_async**](EmailApi.md#upload_file_async) | **PUT** /email/storage/file/{path} | Upload file


## Documentation for Models

 - [models.AccountBaseRequest](AccountBaseRequest.md)
 - [models.AddAttachmentRequest](AddAttachmentRequest.md)
 - [models.AiBcrImage](AiBcrImage.md)
 - [models.AiBcrOcrData](AiBcrOcrData.md)
 - [models.AiBcrOcrDataPart](AiBcrOcrDataPart.md)
 - [models.AiBcrOptions](AiBcrOptions.md)
 - [models.AiBcrRequest](AiBcrRequest.md)
 - [models.AiNameComponent](AiNameComponent.md)
 - [models.AiNameExtracted](AiNameExtracted.md)
 - [models.AiNameExtractedComponent](AiNameExtractedComponent.md)
 - [models.AiNameFormatted](AiNameFormatted.md)
 - [models.AiNameGenderHypothesis](AiNameGenderHypothesis.md)
 - [models.AiNameMatchResult](AiNameMatchResult.md)
 - [models.AiNameMismatch](AiNameMismatch.md)
 - [models.AiNameOptions](AiNameOptions.md)
 - [models.AiNameParsedRequest](AiNameParsedRequest.md)
 - [models.AiNameWeighted](AiNameWeighted.md)
 - [models.AiNameWeightedVariants](AiNameWeightedVariants.md)
 - [models.AiNameWritingStyle](AiNameWritingStyle.md)
 - [models.BaseObject](BaseObject.md)
 - [models.ContactFormat](ContactFormat.md)
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
 - [models.AiBcrBase64Request](AiBcrBase64Request.md)
 - [models.AiBcrImageStorageFile](AiBcrImageStorageFile.md)
 - [models.AiBcrParseOcrDataRequest](AiBcrParseOcrDataRequest.md)
 - [models.AiBcrStorageImageRequest](AiBcrStorageImageRequest.md)
 - [models.AiNameParsedMatchRequest](AiNameParsedMatchRequest.md)
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
 - [models.AiBcrParseOcrDataStorageRequest](AiBcrParseOcrDataStorageRequest.md)
 - [models.AiBcrParseStorageRequest](AiBcrParseStorageRequest.md)
 - [models.AppendEmailBaseRequest](AppendEmailBaseRequest.md)
 - [models.AppendEmailMimeBaseRequest](AppendEmailMimeBaseRequest.md)

