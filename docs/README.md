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
*EmailApi* | [**ai_bcr_parse_model**](EmailApi.md#ai_bcr_parse_model) | **POST** /email/AiBcr/parse-model | Parse images to vCard document models             
*EmailApi* | [**ai_bcr_parse_ocr_data_model**](EmailApi.md#ai_bcr_parse_ocr_data_model) | **POST** /email/AiBcr/parse-ocr-data-model | Parse OCR data to vCard document models             
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
*EmailApi* | [**append_email_model_message**](EmailApi.md#append_email_model_message) | **PUT** /email/client/AppendModel | Adds an email from model to specified folder in email account             
*EmailApi* | [**append_mime_message**](EmailApi.md#append_mime_message) | **PUT** /email/client/AppendMime | Adds an email from MIME to specified folder in email account             
*EmailApi* | [**convert_calendar**](EmailApi.md#convert_calendar) | **PUT** /email/CalendarModel/convert/{format} | Converts calendar document to specified format and returns as file             
*EmailApi* | [**convert_calendar_model_to_alternate**](EmailApi.md#convert_calendar_model_to_alternate) | **PUT** /email/CalendarModel/as-alternate | Convert iCalendar to AlternateView             
*EmailApi* | [**convert_calendar_model_to_file**](EmailApi.md#convert_calendar_model_to_file) | **PUT** /email/CalendarModel/model-as-file/{format} | Converts calendar model to specified format and returns as file             
*EmailApi* | [**convert_contact**](EmailApi.md#convert_contact) | **PUT** /email/ContactModel/{format}/convert/{destinationFormat} | Converts contact document to specified format and returns as file             
*EmailApi* | [**convert_contact_model_to_file**](EmailApi.md#convert_contact_model_to_file) | **PUT** /email/ContactModel/model-as-file/{destinationFormat} | Converts contact model to specified format and returns as file             
*EmailApi* | [**convert_email**](EmailApi.md#convert_email) | **PUT** /email/convert/{format} | Converts email document to specified format and returns as file             
*EmailApi* | [**convert_email_model_to_file**](EmailApi.md#convert_email_model_to_file) | **PUT** /email/model/model-as-file/{destinationFormat} | Converts Email model to specified format and returns as file             
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
*EmailApi* | [**delete_email_thread**](EmailApi.md#delete_email_thread) | **DELETE** /email/client/threads/{threadId} | Delete thread by id. All messages from thread will also be deleted             
*EmailApi* | [**delete_file**](EmailApi.md#delete_file) | **DELETE** /email/storage/file/{path} | Delete file
*EmailApi* | [**delete_folder**](EmailApi.md#delete_folder) | **DELETE** /email/storage/folder/{path} | Delete folder
*EmailApi* | [**delete_mapi_attachment**](EmailApi.md#delete_mapi_attachment) | **DELETE** /email/Mapi/{name}/attachments/{attachment} | Remove attachment from document             
*EmailApi* | [**delete_mapi_properties**](EmailApi.md#delete_mapi_properties) | **DELETE** /email/Mapi/{name}/properties | Delete document properties             
*EmailApi* | [**discover_email_config**](EmailApi.md#discover_email_config) | **GET** /email/config/discover | Discover email accounts by email address. Does not validate discovered accounts.             
*EmailApi* | [**discover_email_config_oauth**](EmailApi.md#discover_email_config_oauth) | **POST** /email/config/discover/oauth | Discover email accounts by email address. Validates discovered accounts using OAuth 2.0.             
*EmailApi* | [**discover_email_config_password**](EmailApi.md#discover_email_config_password) | **POST** /email/config/discover/password | Discover email accounts by email address. Validates discovered accounts using login and password.             
*EmailApi* | [**download_file**](EmailApi.md#download_file) | **GET** /email/storage/file/{path} | Download file
*EmailApi* | [**fetch_email_message**](EmailApi.md#fetch_email_message) | **GET** /email/client/Fetch | Fetch message mime from email account             
*EmailApi* | [**fetch_email_model**](EmailApi.md#fetch_email_model) | **GET** /email/client/FetchModel | Fetch message model from email account             
*EmailApi* | [**fetch_email_thread_messages**](EmailApi.md#fetch_email_thread_messages) | **GET** /email/client/threads/{threadId}/messages | Get messages from thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             
*EmailApi* | [**get_calendar**](EmailApi.md#get_calendar) | **GET** /email/Calendar/{name}/properties | Get calendar file properties             
*EmailApi* | [**get_calendar_as_file**](EmailApi.md#get_calendar_as_file) | **GET** /email/CalendarModel/{fileName}/as-file/{format} | Converts calendar document from storage to specified format and returns as file             
*EmailApi* | [**get_calendar_attachment**](EmailApi.md#get_calendar_attachment) | **GET** /email/Calendar/{name}/attachments/{attachment} | Get iCalendar document attachment by name             
*EmailApi* | [**get_calendar_file_as_model**](EmailApi.md#get_calendar_file_as_model) | **PUT** /email/CalendarModel/file-as-model | Converts calendar document to a model representation             
*EmailApi* | [**get_calendar_list**](EmailApi.md#get_calendar_list) | **GET** /email/Calendar | Get iCalendar files list in folder on storage             
*EmailApi* | [**get_calendar_model**](EmailApi.md#get_calendar_model) | **GET** /email/CalendarModel/{name} | Get calendar file             
*EmailApi* | [**get_calendar_model_as_alternate**](EmailApi.md#get_calendar_model_as_alternate) | **GET** /email/CalendarModel/{name}/as-alternate/{calendarAction} | Get iCalendar from storage as AlternateView             
*EmailApi* | [**get_calendar_model_list**](EmailApi.md#get_calendar_model_list) | **GET** /email/CalendarModel | Get iCalendar list from storage folder             
*EmailApi* | [**get_contact_as_file**](EmailApi.md#get_contact_as_file) | **GET** /email/ContactModel/{format}/{fileName}/as-file/{destinationFormat} | Converts calendar document from storage to specified format and returns as file             
*EmailApi* | [**get_contact_attachment**](EmailApi.md#get_contact_attachment) | **GET** /email/Contact/{format}/{name}/attachments/{attachment} | Get attachment file by name             
*EmailApi* | [**get_contact_file_as_model**](EmailApi.md#get_contact_file_as_model) | **PUT** /email/ContactModel/{format}/file-as-model | Converts contact document to a model representation             
*EmailApi* | [**get_contact_list**](EmailApi.md#get_contact_list) | **GET** /email/Contact/{format} | Get contact list from storage folder             
*EmailApi* | [**get_contact_model**](EmailApi.md#get_contact_model) | **GET** /email/ContactModel/{format}/{name} | Get contact document.             
*EmailApi* | [**get_contact_model_list**](EmailApi.md#get_contact_model_list) | **GET** /email/ContactModel/{format} | Get contact list from storage folder.             
*EmailApi* | [**get_contact_properties**](EmailApi.md#get_contact_properties) | **GET** /email/Contact/{format}/{name}/properties | Get contact document properties             
*EmailApi* | [**get_disc_usage**](EmailApi.md#get_disc_usage) | **GET** /email/storage/disc | Get disc usage
*EmailApi* | [**get_email**](EmailApi.md#get_email) | **GET** /email/{fileName} | Get email document             
*EmailApi* | [**get_email_as_file**](EmailApi.md#get_email_as_file) | **GET** /email/{fileName}/as-file/{format} | Converts email document from storage to specified format and returns as file             
*EmailApi* | [**get_email_attachment**](EmailApi.md#get_email_attachment) | **GET** /email/{fileName}/attachments/{attachment} | Get email attachment by name             
*EmailApi* | [**get_email_client_account**](EmailApi.md#get_email_client_account) | **GET** /email/client/email-client-account | Get email client account from storage             
*EmailApi* | [**get_email_client_multi_account**](EmailApi.md#get_email_client_multi_account) | **GET** /email/client/multi-account | Get email client multi account file (*.multi.account). Will respond error if file extension is not \&quot;.multi.account\&quot;.             
*EmailApi* | [**get_email_file_as_model**](EmailApi.md#get_email_file_as_model) | **PUT** /email/model/{format}/file-as-model | Converts email document to a model representation             
*EmailApi* | [**get_email_model**](EmailApi.md#get_email_model) | **GET** /email/model/{format}/{name} | Get email document.             
*EmailApi* | [**get_email_model_list**](EmailApi.md#get_email_model_list) | **GET** /email/model/{format} | Get email list from storage folder.             
*EmailApi* | [**get_email_property**](EmailApi.md#get_email_property) | **GET** /email/{fileName}/properties/{propertyName} | Get an email document property by its name             
*EmailApi* | [**get_file_versions**](EmailApi.md#get_file_versions) | **GET** /email/storage/version/{path} | Get file versions
*EmailApi* | [**get_files_list**](EmailApi.md#get_files_list) | **GET** /email/storage/folder/{path} | Get all files and folders within a folder
*EmailApi* | [**get_mapi_attachment**](EmailApi.md#get_mapi_attachment) | **GET** /email/Mapi/{name}/attachments/{attachment} | Get document attachment as file stream             
*EmailApi* | [**get_mapi_attachments**](EmailApi.md#get_mapi_attachments) | **GET** /email/Mapi/{name}/attachments | Get document attachment list             
*EmailApi* | [**get_mapi_list**](EmailApi.md#get_mapi_list) | **GET** /email/Mapi | Get document list from storage folder             
*EmailApi* | [**get_mapi_properties**](EmailApi.md#get_mapi_properties) | **GET** /email/Mapi/{name}/properties | Get document properties             
*EmailApi* | [**is_email_address_disposable**](EmailApi.md#is_email_address_disposable) | **GET** /email/disposable/isDisposable/{address} | Check email address is disposable             
*EmailApi* | [**list_email_folders**](EmailApi.md#list_email_folders) | **GET** /email/client/ListFolders | Get folders list in email account             
*EmailApi* | [**list_email_messages**](EmailApi.md#list_email_messages) | **GET** /email/client/ListMessages | Get messages from folder, filtered by query             
*EmailApi* | [**list_email_models**](EmailApi.md#list_email_models) | **GET** /email/client/ListMessagesModel | Get messages from folder, filtered by query             
*EmailApi* | [**list_email_threads**](EmailApi.md#list_email_threads) | **GET** /email/client/threads | Get message threads from folder. All messages are partly fetched (without email body and other fields)             
*EmailApi* | [**move_email_message**](EmailApi.md#move_email_message) | **PUT** /email/client/move | Move message to another folder             
*EmailApi* | [**move_email_thread**](EmailApi.md#move_email_thread) | **PUT** /email/client/threads/{threadId}/move | Move thread to another folder             
*EmailApi* | [**move_file**](EmailApi.md#move_file) | **PUT** /email/storage/file/move/{srcPath} | Move file
*EmailApi* | [**move_folder**](EmailApi.md#move_folder) | **PUT** /email/storage/folder/move/{srcPath} | Move folder
*EmailApi* | [**object_exists**](EmailApi.md#object_exists) | **GET** /email/storage/exist/{path} | Check if file or folder exists
*EmailApi* | [**save_calendar_model**](EmailApi.md#save_calendar_model) | **PUT** /email/CalendarModel/{name} | Save iCalendar             
*EmailApi* | [**save_contact_model**](EmailApi.md#save_contact_model) | **PUT** /email/ContactModel/{format}/{name} | Save contact.             
*EmailApi* | [**save_email_client_account**](EmailApi.md#save_email_client_account) | **PUT** /email/client/email-client-account | Create email client account file (*.account) with any of supported credentials             
*EmailApi* | [**save_email_client_multi_account**](EmailApi.md#save_email_client_multi_account) | **PUT** /email/client/multi-account | Create email client multi account file (*.multi.account). Will respond error if file extension is not \&quot;.multi.account\&quot;.             
*EmailApi* | [**save_email_model**](EmailApi.md#save_email_model) | **PUT** /email/model/{format}/{name} | Save email document.             
*EmailApi* | [**save_mail_account**](EmailApi.md#save_mail_account) | **POST** /email/client/SaveMailAccount | Create email account file (*.account) with login/password authentication             
*EmailApi* | [**save_mail_o_auth_account**](EmailApi.md#save_mail_o_auth_account) | **POST** /email/client/SaveMailOAuthAccount | Create email account file (*.account) with OAuth             
*EmailApi* | [**send_email**](EmailApi.md#send_email) | **POST** /email/client/Send | Send an email from *.eml file located on storage             
*EmailApi* | [**send_email_mime**](EmailApi.md#send_email_mime) | **POST** /email/client/SendMime | Send an email specified by MIME in request             
*EmailApi* | [**send_email_model**](EmailApi.md#send_email_model) | **POST** /email/client/SendModel | Send an email specified by model in request             
*EmailApi* | [**set_email_property**](EmailApi.md#set_email_property) | **PUT** /email/{fileName}/properties/{propertyName} | Set email document property value             
*EmailApi* | [**set_email_read_flag**](EmailApi.md#set_email_read_flag) | **POST** /email/client/SetReadFlag | Sets \&quot;Message is read\&quot; flag             
*EmailApi* | [**set_email_thread_read_flag**](EmailApi.md#set_email_thread_read_flag) | **PUT** /email/client/threads/{threadId}/read-flag | Mark all messages in thread as read or unread             
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
 - [models.AssociatedPerson](AssociatedPerson.md)
 - [models.AttachmentBase](AttachmentBase.md)
 - [models.BaseObject](BaseObject.md)
 - [models.CalendarDto](CalendarDto.md)
 - [models.CalendarDtoAlternateRq](CalendarDtoAlternateRq.md)
 - [models.CalendarReminder](CalendarReminder.md)
 - [models.ContactDto](ContactDto.md)
 - [models.ContactPhoto](ContactPhoto.md)
 - [models.ContentType](ContentType.md)
 - [models.ContentTypeParameter](ContentTypeParameter.md)
 - [models.CreateEmailRequest](CreateEmailRequest.md)
 - [models.CustomerEvent](CustomerEvent.md)
 - [models.DiscUsage](DiscUsage.md)
 - [models.DiscoverEmailConfigRq](DiscoverEmailConfigRq.md)
 - [models.EmailAccountConfig](EmailAccountConfig.md)
 - [models.EmailAccountRequest](EmailAccountRequest.md)
 - [models.EmailAddress](EmailAddress.md)
 - [models.EmailClientAccount](EmailClientAccount.md)
 - [models.EmailClientAccountCredentials](EmailClientAccountCredentials.md)
 - [models.EmailClientMultiAccount](EmailClientMultiAccount.md)
 - [models.EmailDocument](EmailDocument.md)
 - [models.EmailDocumentResponse](EmailDocumentResponse.md)
 - [models.EmailDto](EmailDto.md)
 - [models.EmailProperties](EmailProperties.md)
 - [models.EmailProperty](EmailProperty.md)
 - [models.EmailPropertyResponse](EmailPropertyResponse.md)
 - [models.EmailThread](EmailThread.md)
 - [models.EnumWithCustomOfAssociatedPersonCategory](EnumWithCustomOfAssociatedPersonCategory.md)
 - [models.EnumWithCustomOfEmailAddressCategory](EnumWithCustomOfEmailAddressCategory.md)
 - [models.EnumWithCustomOfEventCategory](EnumWithCustomOfEventCategory.md)
 - [models.EnumWithCustomOfInstantMessengerCategory](EnumWithCustomOfInstantMessengerCategory.md)
 - [models.EnumWithCustomOfPhoneNumberCategory](EnumWithCustomOfPhoneNumberCategory.md)
 - [models.EnumWithCustomOfPostalAddressCategory](EnumWithCustomOfPostalAddressCategory.md)
 - [models.EnumWithCustomOfUrlCategory](EnumWithCustomOfUrlCategory.md)
 - [models.Error](Error.md)
 - [models.ErrorDetails](ErrorDetails.md)
 - [models.FileVersions](FileVersions.md)
 - [models.FilesList](FilesList.md)
 - [models.FilesUploadResult](FilesUploadResult.md)
 - [models.HierarchicalObjectRequest](HierarchicalObjectRequest.md)
 - [models.HierarchicalObjectResponse](HierarchicalObjectResponse.md)
 - [models.InstantMessengerAddress](InstantMessengerAddress.md)
 - [models.Link](Link.md)
 - [models.ListResponseOfAiBcrOcrData](ListResponseOfAiBcrOcrData.md)
 - [models.ListResponseOfAiNameComponent](ListResponseOfAiNameComponent.md)
 - [models.ListResponseOfAiNameExtracted](ListResponseOfAiNameExtracted.md)
 - [models.ListResponseOfAiNameGenderHypothesis](ListResponseOfAiNameGenderHypothesis.md)
 - [models.ListResponseOfContactDto](ListResponseOfContactDto.md)
 - [models.ListResponseOfEmailAccountConfig](ListResponseOfEmailAccountConfig.md)
 - [models.ListResponseOfEmailDto](ListResponseOfEmailDto.md)
 - [models.ListResponseOfEmailThread](ListResponseOfEmailThread.md)
 - [models.ListResponseOfHierarchicalObject](ListResponseOfHierarchicalObject.md)
 - [models.ListResponseOfHierarchicalObjectResponse](ListResponseOfHierarchicalObjectResponse.md)
 - [models.ListResponseOfMailServerFolder](ListResponseOfMailServerFolder.md)
 - [models.ListResponseOfStorageFileLocation](ListResponseOfStorageFileLocation.md)
 - [models.ListResponseOfStorageModelOfCalendarDto](ListResponseOfStorageModelOfCalendarDto.md)
 - [models.ListResponseOfStorageModelOfContactDto](ListResponseOfStorageModelOfContactDto.md)
 - [models.ListResponseOfStorageModelOfEmailDto](ListResponseOfStorageModelOfEmailDto.md)
 - [models.ListResponseOfString](ListResponseOfString.md)
 - [models.MailAddress](MailAddress.md)
 - [models.MailServerFolder](MailServerFolder.md)
 - [models.MimeResponse](MimeResponse.md)
 - [models.NameValuePair](NameValuePair.md)
 - [models.ObjectExist](ObjectExist.md)
 - [models.PhoneNumber](PhoneNumber.md)
 - [models.PostalAddress](PostalAddress.md)
 - [models.ReminderAttendee](ReminderAttendee.md)
 - [models.ReminderTrigger](ReminderTrigger.md)
 - [models.SetEmailPropertyRequest](SetEmailPropertyRequest.md)
 - [models.StorageExist](StorageExist.md)
 - [models.StorageFile](StorageFile.md)
 - [models.StorageFileRqOfEmailClientAccount](StorageFileRqOfEmailClientAccount.md)
 - [models.StorageFileRqOfEmailClientMultiAccount](StorageFileRqOfEmailClientMultiAccount.md)
 - [models.StorageFolderLocation](StorageFolderLocation.md)
 - [models.StorageModelOfCalendarDto](StorageModelOfCalendarDto.md)
 - [models.StorageModelOfContactDto](StorageModelOfContactDto.md)
 - [models.StorageModelOfEmailDto](StorageModelOfEmailDto.md)
 - [models.StorageModelRqOfCalendarDto](StorageModelRqOfCalendarDto.md)
 - [models.StorageModelRqOfContactDto](StorageModelRqOfContactDto.md)
 - [models.StorageModelRqOfEmailDto](StorageModelRqOfEmailDto.md)
 - [models.Url](Url.md)
 - [models.ValueResponse](ValueResponse.md)
 - [models.ValueTOfBoolean](ValueTOfBoolean.md)
 - [models.AiBcrBase64Image](AiBcrBase64Image.md)
 - [models.AiBcrBase64Rq](AiBcrBase64Rq.md)
 - [models.AiBcrImageStorageFile](AiBcrImageStorageFile.md)
 - [models.AiBcrParseOcrDataRq](AiBcrParseOcrDataRq.md)
 - [models.AiBcrStorageImageRq](AiBcrStorageImageRq.md)
 - [models.AiNameParsedMatchRq](AiNameParsedMatchRq.md)
 - [models.AlternateView](AlternateView.md)
 - [models.AppendEmailAccountBaseRequest](AppendEmailAccountBaseRequest.md)
 - [models.Attachment](Attachment.md)
 - [models.CalendarDtoList](CalendarDtoList.md)
 - [models.ContactDtoList](ContactDtoList.md)
 - [models.CreateFolderBaseRequest](CreateFolderBaseRequest.md)
 - [models.DeleteEmailThreadAccountRq](DeleteEmailThreadAccountRq.md)
 - [models.DeleteFolderBaseRequest](DeleteFolderBaseRequest.md)
 - [models.DeleteMessageBaseRequest](DeleteMessageBaseRequest.md)
 - [models.DiscoverEmailConfigOauth](DiscoverEmailConfigOauth.md)
 - [models.DiscoverEmailConfigPassword](DiscoverEmailConfigPassword.md)
 - [models.EmailAccountConfigList](EmailAccountConfigList.md)
 - [models.EmailClientAccountOauthCredentials](EmailClientAccountOauthCredentials.md)
 - [models.EmailClientAccountPasswordCredentials](EmailClientAccountPasswordCredentials.md)
 - [models.EmailDtoList](EmailDtoList.md)
 - [models.EmailThreadList](EmailThreadList.md)
 - [models.EmailThreadReadFlagRq](EmailThreadReadFlagRq.md)
 - [models.FileVersion](FileVersion.md)
 - [models.HierarchicalObject](HierarchicalObject.md)
 - [models.IndexedHierarchicalObject](IndexedHierarchicalObject.md)
 - [models.IndexedPrimitiveObject](IndexedPrimitiveObject.md)
 - [models.LinkedResource](LinkedResource.md)
 - [models.MoveEmailMessageRq](MoveEmailMessageRq.md)
 - [models.MoveEmailThreadRq](MoveEmailThreadRq.md)
 - [models.PrimitiveObject](PrimitiveObject.md)
 - [models.SaveEmailAccountRequest](SaveEmailAccountRequest.md)
 - [models.SaveOAuthEmailAccountRequest](SaveOAuthEmailAccountRequest.md)
 - [models.SendEmailBaseRequest](SendEmailBaseRequest.md)
 - [models.SendEmailMimeBaseRequest](SendEmailMimeBaseRequest.md)
 - [models.SendEmailModelRq](SendEmailModelRq.md)
 - [models.SetMessageReadFlagAccountBaseRequest](SetMessageReadFlagAccountBaseRequest.md)
 - [models.StorageFileLocation](StorageFileLocation.md)
 - [models.AiBcrParseStorageRq](AiBcrParseStorageRq.md)
 - [models.AppendEmailBaseRequest](AppendEmailBaseRequest.md)
 - [models.AppendEmailMimeBaseRequest](AppendEmailMimeBaseRequest.md)
 - [models.AppendEmailModelRq](AppendEmailModelRq.md)

