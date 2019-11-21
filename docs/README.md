## Documentation for API endpoints

All URIs are relative to *https://api.aspose.cloud/v3.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CalendarApi* | [**add_calendar_attachment**](CalendarApi.md#add_calendar_attachment) | **PUT** /email/Calendar/{name}/attachments/{attachment} | Adds an attachment to iCalendar file
*CalendarApi* | [**add_calendar_attachment_async**](CalendarApi.md#add_calendar_attachment_async) | **PUT** /email/Calendar/{name}/attachments/{attachment} | Adds an attachment to iCalendar file
*CalendarApi* | [**create_calendar**](CalendarApi.md#create_calendar) | **PUT** /email/Calendar/{name} | Create calendar file
*CalendarApi* | [**create_calendar_async**](CalendarApi.md#create_calendar_async) | **PUT** /email/Calendar/{name} | Create calendar file
*CalendarApi* | [**delete_calendar_property**](CalendarApi.md#delete_calendar_property) | **DELETE** /email/Calendar/{name}/properties/{memberName}/{index} | Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}
*CalendarApi* | [**delete_calendar_property_async**](CalendarApi.md#delete_calendar_property_async) | **DELETE** /email/Calendar/{name}/properties/{memberName}/{index} | Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}
*CalendarApi* | [**get_calendar**](CalendarApi.md#get_calendar) | **GET** /email/Calendar/{name}/properties | Get calendar file properties
*CalendarApi* | [**get_calendar_async**](CalendarApi.md#get_calendar_async) | **GET** /email/Calendar/{name}/properties | Get calendar file properties
*CalendarApi* | [**get_calendar_attachment**](CalendarApi.md#get_calendar_attachment) | **GET** /email/Calendar/{name}/attachments/{attachment} | Get iCalendar document attachment by name
*CalendarApi* | [**get_calendar_attachment_async**](CalendarApi.md#get_calendar_attachment_async) | **GET** /email/Calendar/{name}/attachments/{attachment} | Get iCalendar document attachment by name
*CalendarApi* | [**get_calendar_list**](CalendarApi.md#get_calendar_list) | **GET** /email/Calendar | Get iCalendar files list in folder on storage
*CalendarApi* | [**get_calendar_list_async**](CalendarApi.md#get_calendar_list_async) | **GET** /email/Calendar | Get iCalendar files list in folder on storage
*CalendarApi* | [**update_calendar_properties**](CalendarApi.md#update_calendar_properties) | **PUT** /email/Calendar/{name}/properties | Update calendar file properties
*CalendarApi* | [**update_calendar_properties_async**](CalendarApi.md#update_calendar_properties_async) | **PUT** /email/Calendar/{name}/properties | Update calendar file properties
*ContactApi* | [**add_contact_attachment**](ContactApi.md#add_contact_attachment) | **PUT** /email/Contact/{format}/{name}/attachments/{attachment} | Add attachment to contact document
*ContactApi* | [**add_contact_attachment_async**](ContactApi.md#add_contact_attachment_async) | **PUT** /email/Contact/{format}/{name}/attachments/{attachment} | Add attachment to contact document
*ContactApi* | [**create_contact**](ContactApi.md#create_contact) | **PUT** /email/Contact/{format}/{name} | Create contact document
*ContactApi* | [**create_contact_async**](ContactApi.md#create_contact_async) | **PUT** /email/Contact/{format}/{name} | Create contact document
*ContactApi* | [**delete_contact_property**](ContactApi.md#delete_contact_property) | **DELETE** /email/Contact/{format}/{name}/properties/{memberName}/{index} | Delete property from indexed property list
*ContactApi* | [**delete_contact_property_async**](ContactApi.md#delete_contact_property_async) | **DELETE** /email/Contact/{format}/{name}/properties/{memberName}/{index} | Delete property from indexed property list
*ContactApi* | [**get_contact_attachment**](ContactApi.md#get_contact_attachment) | **GET** /email/Contact/{format}/{name}/attachments/{attachment} | Get attachment file by name
*ContactApi* | [**get_contact_attachment_async**](ContactApi.md#get_contact_attachment_async) | **GET** /email/Contact/{format}/{name}/attachments/{attachment} | Get attachment file by name
*ContactApi* | [**get_contact_list**](ContactApi.md#get_contact_list) | **GET** /email/Contact/{format} | Get contact list from storage folder
*ContactApi* | [**get_contact_list_async**](ContactApi.md#get_contact_list_async) | **GET** /email/Contact/{format} | Get contact list from storage folder
*ContactApi* | [**get_contact_properties**](ContactApi.md#get_contact_properties) | **GET** /email/Contact/{format}/{name}/properties | Get contact document properties
*ContactApi* | [**get_contact_properties_async**](ContactApi.md#get_contact_properties_async) | **GET** /email/Contact/{format}/{name}/properties | Get contact document properties
*ContactApi* | [**update_contact_properties**](ContactApi.md#update_contact_properties) | **PUT** /email/Contact/{format}/{name}/properties | Update contact document properties
*ContactApi* | [**update_contact_properties_async**](ContactApi.md#update_contact_properties_async) | **PUT** /email/Contact/{format}/{name}/properties | Update contact document properties
*EmailApi* | [**add_email_attachment**](EmailApi.md#add_email_attachment) | **POST** /email/{fileName}/attachments/{attachmentName} | Adds an attachment to Email document
*EmailApi* | [**add_email_attachment_async**](EmailApi.md#add_email_attachment_async) | **POST** /email/{fileName}/attachments/{attachmentName} | Adds an attachment to Email document
*EmailApi* | [**create_email**](EmailApi.md#create_email) | **PUT** /email/{fileName} | Create an email document
*EmailApi* | [**create_email_async**](EmailApi.md#create_email_async) | **PUT** /email/{fileName} | Create an email document
*EmailApi* | [**get_email**](EmailApi.md#get_email) | **GET** /email/{fileName} | Get email document
*EmailApi* | [**get_email_async**](EmailApi.md#get_email_async) | **GET** /email/{fileName} | Get email document
*EmailApi* | [**get_email_attachment**](EmailApi.md#get_email_attachment) | **GET** /email/{fileName}/attachments/{attachment} | Get email attachment by name
*EmailApi* | [**get_email_attachment_async**](EmailApi.md#get_email_attachment_async) | **GET** /email/{fileName}/attachments/{attachment} | Get email attachment by name
*EmailApi* | [**get_email_property**](EmailApi.md#get_email_property) | **GET** /email/{fileName}/properties/{propertyName} | Get an email document property by its name
*EmailApi* | [**get_email_property_async**](EmailApi.md#get_email_property_async) | **GET** /email/{fileName}/properties/{propertyName} | Get an email document property by its name
*EmailApi* | [**set_email_property**](EmailApi.md#set_email_property) | **PUT** /email/{fileName}/properties/{propertyName} | Set email document property value
*EmailApi* | [**set_email_property_async**](EmailApi.md#set_email_property_async) | **PUT** /email/{fileName}/properties/{propertyName} | Set email document property value
*EmailClientApi* | [**append_email_message**](EmailClientApi.md#append_email_message) | **PUT** /email/client/Append | Adds an email from *.eml file to specified folder in email account
*EmailClientApi* | [**append_email_message_async**](EmailClientApi.md#append_email_message_async) | **PUT** /email/client/Append | Adds an email from *.eml file to specified folder in email account
*EmailClientApi* | [**append_mime_message**](EmailClientApi.md#append_mime_message) | **PUT** /email/client/AppendMime | Adds an email from MIME to specified folder in email account
*EmailClientApi* | [**append_mime_message_async**](EmailClientApi.md#append_mime_message_async) | **PUT** /email/client/AppendMime | Adds an email from MIME to specified folder in email account
*EmailClientApi* | [**create_email_folder**](EmailClientApi.md#create_email_folder) | **PUT** /email/client/CreateFolder | Create new folder in email account
*EmailClientApi* | [**create_email_folder_async**](EmailClientApi.md#create_email_folder_async) | **PUT** /email/client/CreateFolder | Create new folder in email account
*EmailClientApi* | [**delete_email_folder**](EmailClientApi.md#delete_email_folder) | **DELETE** /email/client/DeleteFolder | Delete a folder in email account
*EmailClientApi* | [**delete_email_folder_async**](EmailClientApi.md#delete_email_folder_async) | **DELETE** /email/client/DeleteFolder | Delete a folder in email account
*EmailClientApi* | [**delete_email_message**](EmailClientApi.md#delete_email_message) | **DELETE** /email/client/DeleteMessage | Delete message from email account by id
*EmailClientApi* | [**delete_email_message_async**](EmailClientApi.md#delete_email_message_async) | **DELETE** /email/client/DeleteMessage | Delete message from email account by id
*EmailClientApi* | [**fetch_email_message**](EmailClientApi.md#fetch_email_message) | **GET** /email/client/Fetch | Fetch message mime from email account
*EmailClientApi* | [**fetch_email_message_async**](EmailClientApi.md#fetch_email_message_async) | **GET** /email/client/Fetch | Fetch message mime from email account
*EmailClientApi* | [**list_email_folders**](EmailClientApi.md#list_email_folders) | **GET** /email/client/ListFolders | Get folders list in email account
*EmailClientApi* | [**list_email_folders_async**](EmailClientApi.md#list_email_folders_async) | **GET** /email/client/ListFolders | Get folders list in email account
*EmailClientApi* | [**list_email_messages**](EmailClientApi.md#list_email_messages) | **GET** /email/client/ListMessages | Get messages from folder, filtered by query
*EmailClientApi* | [**list_email_messages_async**](EmailClientApi.md#list_email_messages_async) | **GET** /email/client/ListMessages | Get messages from folder, filtered by query
*EmailClientApi* | [**save_mail_account**](EmailClientApi.md#save_mail_account) | **POST** /email/client/SaveMailAccount | Create email account file (*.account) with login/password authentication
*EmailClientApi* | [**save_mail_account_async**](EmailClientApi.md#save_mail_account_async) | **POST** /email/client/SaveMailAccount | Create email account file (*.account) with login/password authentication
*EmailClientApi* | [**save_mail_o_auth_account**](EmailClientApi.md#save_mail_o_auth_account) | **POST** /email/client/SaveMailOAuthAccount | Create email account file (*.account) with OAuth
*EmailClientApi* | [**save_mail_o_auth_account_async**](EmailClientApi.md#save_mail_o_auth_account_async) | **POST** /email/client/SaveMailOAuthAccount | Create email account file (*.account) with OAuth
*EmailClientApi* | [**send_email**](EmailClientApi.md#send_email) | **POST** /email/client/Send | Send an email from *.eml file located on storage
*EmailClientApi* | [**send_email_async**](EmailClientApi.md#send_email_async) | **POST** /email/client/Send | Send an email from *.eml file located on storage
*EmailClientApi* | [**send_email_mime**](EmailClientApi.md#send_email_mime) | **POST** /email/client/SendMime | Send an email specified by MIME in request
*EmailClientApi* | [**send_email_mime_async**](EmailClientApi.md#send_email_mime_async) | **POST** /email/client/SendMime | Send an email specified by MIME in request
*EmailClientApi* | [**set_email_read_flag**](EmailClientApi.md#set_email_read_flag) | **POST** /email/client/SetReadFlag | Sets \&quot;Message is read\&quot; flag
*EmailClientApi* | [**set_email_read_flag_async**](EmailClientApi.md#set_email_read_flag_async) | **POST** /email/client/SetReadFlag | Sets \&quot;Message is read\&quot; flag
*FileApi* | [**copy_file**](FileApi.md#copy_file) | **PUT** /email/storage/file/copy/{srcPath} | Copy file
*FileApi* | [**copy_file_async**](FileApi.md#copy_file_async) | **PUT** /email/storage/file/copy/{srcPath} | Copy file
*FileApi* | [**delete_file**](FileApi.md#delete_file) | **DELETE** /email/storage/file/{path} | Delete file
*FileApi* | [**delete_file_async**](FileApi.md#delete_file_async) | **DELETE** /email/storage/file/{path} | Delete file
*FileApi* | [**download_file**](FileApi.md#download_file) | **GET** /email/storage/file/{path} | Download file
*FileApi* | [**download_file_async**](FileApi.md#download_file_async) | **GET** /email/storage/file/{path} | Download file
*FileApi* | [**move_file**](FileApi.md#move_file) | **PUT** /email/storage/file/move/{srcPath} | Move file
*FileApi* | [**move_file_async**](FileApi.md#move_file_async) | **PUT** /email/storage/file/move/{srcPath} | Move file
*FileApi* | [**upload_file**](FileApi.md#upload_file) | **PUT** /email/storage/file/{path} | Upload file
*FileApi* | [**upload_file_async**](FileApi.md#upload_file_async) | **PUT** /email/storage/file/{path} | Upload file
*FolderApi* | [**copy_folder**](FolderApi.md#copy_folder) | **PUT** /email/storage/folder/copy/{srcPath} | Copy folder
*FolderApi* | [**copy_folder_async**](FolderApi.md#copy_folder_async) | **PUT** /email/storage/folder/copy/{srcPath} | Copy folder
*FolderApi* | [**create_folder**](FolderApi.md#create_folder) | **PUT** /email/storage/folder/{path} | Create the folder
*FolderApi* | [**create_folder_async**](FolderApi.md#create_folder_async) | **PUT** /email/storage/folder/{path} | Create the folder
*FolderApi* | [**delete_folder**](FolderApi.md#delete_folder) | **DELETE** /email/storage/folder/{path} | Delete folder
*FolderApi* | [**delete_folder_async**](FolderApi.md#delete_folder_async) | **DELETE** /email/storage/folder/{path} | Delete folder
*FolderApi* | [**get_files_list**](FolderApi.md#get_files_list) | **GET** /email/storage/folder/{path} | Get all files and folders within a folder
*FolderApi* | [**get_files_list_async**](FolderApi.md#get_files_list_async) | **GET** /email/storage/folder/{path} | Get all files and folders within a folder
*FolderApi* | [**move_folder**](FolderApi.md#move_folder) | **PUT** /email/storage/folder/move/{srcPath} | Move folder
*FolderApi* | [**move_folder_async**](FolderApi.md#move_folder_async) | **PUT** /email/storage/folder/move/{srcPath} | Move folder
*MapiApi* | [**add_mapi_attachment**](MapiApi.md#add_mapi_attachment) | **PUT** /email/Mapi/{name}/attachments/{attachment} | Add attachment to document
*MapiApi* | [**add_mapi_attachment_async**](MapiApi.md#add_mapi_attachment_async) | **PUT** /email/Mapi/{name}/attachments/{attachment} | Add attachment to document
*MapiApi* | [**create_mapi**](MapiApi.md#create_mapi) | **PUT** /email/Mapi/{name} | Create new document
*MapiApi* | [**create_mapi_async**](MapiApi.md#create_mapi_async) | **PUT** /email/Mapi/{name} | Create new document
*MapiApi* | [**delete_mapi_attachment**](MapiApi.md#delete_mapi_attachment) | **DELETE** /email/Mapi/{name}/attachments/{attachment} | Remove attachment from document
*MapiApi* | [**delete_mapi_attachment_async**](MapiApi.md#delete_mapi_attachment_async) | **DELETE** /email/Mapi/{name}/attachments/{attachment} | Remove attachment from document
*MapiApi* | [**delete_mapi_properties**](MapiApi.md#delete_mapi_properties) | **DELETE** /email/Mapi/{name}/properties | Delete document properties
*MapiApi* | [**delete_mapi_properties_async**](MapiApi.md#delete_mapi_properties_async) | **DELETE** /email/Mapi/{name}/properties | Delete document properties
*MapiApi* | [**get_mapi_attachment**](MapiApi.md#get_mapi_attachment) | **GET** /email/Mapi/{name}/attachments/{attachment} | Get document attachment as file stream
*MapiApi* | [**get_mapi_attachment_async**](MapiApi.md#get_mapi_attachment_async) | **GET** /email/Mapi/{name}/attachments/{attachment} | Get document attachment as file stream
*MapiApi* | [**get_mapi_attachments**](MapiApi.md#get_mapi_attachments) | **GET** /email/Mapi/{name}/attachments | Get document attachment list
*MapiApi* | [**get_mapi_attachments_async**](MapiApi.md#get_mapi_attachments_async) | **GET** /email/Mapi/{name}/attachments | Get document attachment list
*MapiApi* | [**get_mapi_list**](MapiApi.md#get_mapi_list) | **GET** /email/Mapi | Get document list from storage folder
*MapiApi* | [**get_mapi_list_async**](MapiApi.md#get_mapi_list_async) | **GET** /email/Mapi | Get document list from storage folder
*MapiApi* | [**get_mapi_properties**](MapiApi.md#get_mapi_properties) | **GET** /email/Mapi/{name}/properties | Get document properties
*MapiApi* | [**get_mapi_properties_async**](MapiApi.md#get_mapi_properties_async) | **GET** /email/Mapi/{name}/properties | Get document properties
*MapiApi* | [**update_mapi_properties**](MapiApi.md#update_mapi_properties) | **PUT** /email/Mapi/{name}/properties | Update document properties
*MapiApi* | [**update_mapi_properties_async**](MapiApi.md#update_mapi_properties_async) | **PUT** /email/Mapi/{name}/properties | Update document properties
*StorageApi* | [**get_disc_usage**](StorageApi.md#get_disc_usage) | **GET** /email/storage/disc | Get disc usage
*StorageApi* | [**get_disc_usage_async**](StorageApi.md#get_disc_usage_async) | **GET** /email/storage/disc | Get disc usage
*StorageApi* | [**get_file_versions**](StorageApi.md#get_file_versions) | **GET** /email/storage/version/{path} | Get file versions
*StorageApi* | [**get_file_versions_async**](StorageApi.md#get_file_versions_async) | **GET** /email/storage/version/{path} | Get file versions
*StorageApi* | [**object_exists**](StorageApi.md#object_exists) | **GET** /email/storage/exist/{path} | Check if file or folder exists
*StorageApi* | [**object_exists_async**](StorageApi.md#object_exists_async) | **GET** /email/storage/exist/{path} | Check if file or folder exists
*StorageApi* | [**storage_exists**](StorageApi.md#storage_exists) | **GET** /email/storage/{storageName}/exist | Check if storage exists
*StorageApi* | [**storage_exists_async**](StorageApi.md#storage_exists_async) | **GET** /email/storage/{storageName}/exist | Check if storage exists


## Documentation for Models

 - [models.AccountBaseRequest](AccountBaseRequest.md)
 - [models.AddAttachmentRequest](AddAttachmentRequest.md)
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
 - [models.ListResponseOfHierarchicalObjectResponse](ListResponseOfHierarchicalObjectResponse.md)
 - [models.ListResponseOfMailServerFolder](ListResponseOfMailServerFolder.md)
 - [models.ListResponseOfString](ListResponseOfString.md)
 - [models.MailServerFolder](MailServerFolder.md)
 - [models.MimeResponse](MimeResponse.md)
 - [models.ObjectExist](ObjectExist.md)
 - [models.SetEmailPropertyRequest](SetEmailPropertyRequest.md)
 - [models.StorageExist](StorageExist.md)
 - [models.StorageFile](StorageFile.md)
 - [models.StorageFolderLocation](StorageFolderLocation.md)
 - [models.ValueResponse](ValueResponse.md)
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
 - [models.AppendEmailBaseRequest](AppendEmailBaseRequest.md)
 - [models.AppendEmailMimeBaseRequest](AppendEmailMimeBaseRequest.md)

