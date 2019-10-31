# AsposeEmailCloud::EmailApi

All URIs are relative to *https://localhost:53637/v3.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_calendar_attachment**](EmailApi.md#add_calendar_attachment) | **PUT** /email/Calendar/{name}/attachments/{attachment} | Adds an attachment to iCalendar file
[**add_contact_attachment**](EmailApi.md#add_contact_attachment) | **PUT** /email/Contact/{format}/{name}/attachments/{attachment} | Add attachment to contact document
[**add_email_attachment**](EmailApi.md#add_email_attachment) | **POST** /email/{fileName}/attachments/{attachmentName} | Adds an attachment to Email document
[**add_mapi_attachment**](EmailApi.md#add_mapi_attachment) | **PUT** /email/Mapi/{name}/attachments/{attachment} | Add attachment to document
[**append_email_message**](EmailApi.md#append_email_message) | **PUT** /email/client/Append | Adds an email from *.eml file to specified folder in email account
[**append_mime_message**](EmailApi.md#append_mime_message) | **PUT** /email/client/AppendMime | Adds an email from MIME to specified folder in email account
[**copy_file**](EmailApi.md#copy_file) | **PUT** /email/storage/file/copy/{srcPath} | Copy file
[**copy_folder**](EmailApi.md#copy_folder) | **PUT** /email/storage/folder/copy/{srcPath} | Copy folder
[**create_calendar**](EmailApi.md#create_calendar) | **PUT** /email/Calendar/{name} | Create calendar file
[**create_contact**](EmailApi.md#create_contact) | **PUT** /email/Contact/{format}/{name} | Create contact document
[**create_email**](EmailApi.md#create_email) | **PUT** /email/{fileName} | Create an email document
[**create_email_folder**](EmailApi.md#create_email_folder) | **PUT** /email/client/CreateFolder | Create new folder in email account
[**create_folder**](EmailApi.md#create_folder) | **PUT** /email/storage/folder/{path} | Create the folder
[**create_mapi**](EmailApi.md#create_mapi) | **PUT** /email/Mapi/{name} | Create new document
[**delete_calendar_property**](EmailApi.md#delete_calendar_property) | **DELETE** /email/Calendar/{name}/properties/{memberName}/{index} | Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}
[**delete_contact_property**](EmailApi.md#delete_contact_property) | **DELETE** /email/Contact/{format}/{name}/properties/{memberName}/{index} | Delete property from indexed property list
[**delete_email_folder**](EmailApi.md#delete_email_folder) | **DELETE** /email/client/DeleteFolder | Delete a folder in email account
[**delete_email_message**](EmailApi.md#delete_email_message) | **DELETE** /email/client/DeleteMessage | Delete message from email account by id
[**delete_file**](EmailApi.md#delete_file) | **DELETE** /email/storage/file/{path} | Delete file
[**delete_folder**](EmailApi.md#delete_folder) | **DELETE** /email/storage/folder/{path} | Delete folder
[**delete_mapi_attachment**](EmailApi.md#delete_mapi_attachment) | **DELETE** /email/Mapi/{name}/attachments/{attachment} | Remove attachment from document
[**delete_mapi_properties**](EmailApi.md#delete_mapi_properties) | **DELETE** /email/Mapi/{name}/properties | Delete document properties
[**download_file**](EmailApi.md#download_file) | **GET** /email/storage/file/{path} | Download file
[**fetch_email_message**](EmailApi.md#fetch_email_message) | **GET** /email/client/Fetch | Fetch message mime from email account
[**get_calendar**](EmailApi.md#get_calendar) | **GET** /email/Calendar/{name}/properties | Get calendar file properties
[**get_calendar_attachment**](EmailApi.md#get_calendar_attachment) | **GET** /email/Calendar/{name}/attachments/{attachment} | Get iCalendar document attachment by name
[**get_calendar_list**](EmailApi.md#get_calendar_list) | **GET** /email/Calendar | Get iCalendar files list in folder on storage
[**get_contact_attachment**](EmailApi.md#get_contact_attachment) | **GET** /email/Contact/{format}/{name}/attachments/{attachment} | Get attachment file by name
[**get_contact_list**](EmailApi.md#get_contact_list) | **GET** /email/Contact/{format} | Get contact list from storage folder
[**get_contact_properties**](EmailApi.md#get_contact_properties) | **GET** /email/Contact/{format}/{name}/properties | Get contact document properties
[**get_disc_usage**](EmailApi.md#get_disc_usage) | **GET** /email/storage/disc | Get disc usage
[**get_email**](EmailApi.md#get_email) | **GET** /email/{fileName} | Get email document
[**get_email_attachment**](EmailApi.md#get_email_attachment) | **GET** /email/{fileName}/attachments | Get email attachment by name
[**get_email_property**](EmailApi.md#get_email_property) | **GET** /email/{fileName}/properties/{propertyName} | Get an email document property by its name
[**get_file_versions**](EmailApi.md#get_file_versions) | **GET** /email/storage/version/{path} | Get file versions
[**get_files_list**](EmailApi.md#get_files_list) | **GET** /email/storage/folder/{path} | Get all files and folders within a folder
[**get_mapi_attachment**](EmailApi.md#get_mapi_attachment) | **GET** /email/Mapi/{name}/attachments/{attachment} | Get document attachment as file stream
[**get_mapi_attachments**](EmailApi.md#get_mapi_attachments) | **GET** /email/Mapi/{name}/attachments | Get document attachment list
[**get_mapi_list**](EmailApi.md#get_mapi_list) | **GET** /email/Mapi | Get document list from storage folder
[**get_mapi_properties**](EmailApi.md#get_mapi_properties) | **GET** /email/Mapi/{name}/properties | Get document properties
[**list_email_folders**](EmailApi.md#list_email_folders) | **GET** /email/client/ListFolders | Get folders list in email account
[**list_email_messages**](EmailApi.md#list_email_messages) | **GET** /email/client/ListMessages | Get messages from folder, filtered by query
[**move_file**](EmailApi.md#move_file) | **PUT** /email/storage/file/move/{srcPath} | Move file
[**move_folder**](EmailApi.md#move_folder) | **PUT** /email/storage/folder/move/{srcPath} | Move folder
[**object_exists**](EmailApi.md#object_exists) | **GET** /email/storage/exist/{path} | Check if file or folder exists
[**save_mail_account**](EmailApi.md#save_mail_account) | **POST** /email/client/SaveMailAccount | Create email account file (*.account) with login/password authentication
[**save_mail_o_auth_account**](EmailApi.md#save_mail_o_auth_account) | **POST** /email/client/SaveMailOAuthAccount | Create email account file (*.account) with OAuth
[**send_email**](EmailApi.md#send_email) | **POST** /email/client/Send | Send an email from *.eml file located on storage
[**send_email_mime**](EmailApi.md#send_email_mime) | **POST** /email/client/SendMime | Send an email specified by MIME in request
[**set_email_property**](EmailApi.md#set_email_property) | **PUT** /email/{fileName}/properties/{propertyName} | Set email document property value
[**set_email_read_flag**](EmailApi.md#set_email_read_flag) | **POST** /email/client/SetReadFlag | Sets \&quot;Message is read\&quot; flag
[**storage_exists**](EmailApi.md#storage_exists) | **GET** /email/storage/{storageName}/exist | Check if storage exists
[**update_calendar_properties**](EmailApi.md#update_calendar_properties) | **PUT** /email/Calendar/{name}/properties | Update calendar file properties
[**update_contact_properties**](EmailApi.md#update_contact_properties) | **PUT** /email/Contact/{format}/{name}/properties | Update contact document properties
[**update_mapi_properties**](EmailApi.md#update_mapi_properties) | **PUT** /email/Mapi/{name}/properties | Update document properties
[**upload_file**](EmailApi.md#upload_file) | **PUT** /email/storage/file/{path} | Upload file


# **add_calendar_attachment**
> add_calendar_attachment(name, attachment, request)

Adds an attachment to iCalendar file

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Calendar file name in storage

attachment = 'attachment_example' # String | Attachment file name in storage

request = AsposeEmailCloud::AddAttachmentRequest.new # AddAttachmentRequest | Storage name and folder path for calendar and attachment files


begin
  #Adds an attachment to iCalendar file
  api_instance.add_calendar_attachment(name, attachment, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->add_calendar_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Calendar file name in storage | 
 **attachment** | **String**| Attachment file name in storage | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Storage name and folder path for calendar and attachment files | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_contact_attachment**
> add_contact_attachment(format, name, attachment, request)

Add attachment to contact document

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

format = 'format_example' # String | Contact document format

name = 'name_example' # String | Contact document file name

attachment = 'attachment_example' # String | Attachment name

request = AsposeEmailCloud::AddAttachmentRequest.new # AddAttachmentRequest | Add attachment request


begin
  #Add attachment to contact document
  api_instance.add_contact_attachment(format, name, attachment, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->add_contact_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **attachment** | **String**| Attachment name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Add attachment request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_email_attachment**
> EmailDocumentResponse add_email_attachment(attachment_name, file_name, request)

Adds an attachment to Email document

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

attachment_name = 'attachment_name_example' # String | Attachment file name

file_name = 'file_name_example' # String | Email document file name

request = AsposeEmailCloud::AddAttachmentRequest.new # AddAttachmentRequest | Storage info to specify location of email document and attachment files


begin
  #Adds an attachment to Email document
  result = api_instance.add_email_attachment(attachment_name, file_name, request)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->add_email_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_name** | **String**| Attachment file name | 
 **file_name** | **String**| Email document file name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Storage info to specify location of email document and attachment files | 

### Return type

[**EmailDocumentResponse**](EmailDocumentResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_mapi_attachment**
> add_mapi_attachment(name, attachment, request)

Add attachment to document

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Document file name

attachment = 'attachment_example' # String | Attachment file name

request = AsposeEmailCloud::AddAttachmentRequest.new # AddAttachmentRequest | Add attachment request


begin
  #Add attachment to document
  api_instance.add_mapi_attachment(name, attachment, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->add_mapi_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment file name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Add attachment request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **append_email_message**
> EmailPropertyResponse append_email_message(request)

Adds an email from *.eml file to specified folder in email account

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::AppendEmailBaseRequest.new # AppendEmailBaseRequest | Append email request


begin
  #Adds an email from *.eml file to specified folder in email account
  result = api_instance.append_email_message(request)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->append_email_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AppendEmailBaseRequest**](AppendEmailBaseRequest.md)| Append email request | 

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **append_mime_message**
> ValueResponse append_mime_message(request)

Adds an email from MIME to specified folder in email account

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::AppendEmailMimeBaseRequest.new # AppendEmailMimeBaseRequest | Append email request


begin
  #Adds an email from MIME to specified folder in email account
  result = api_instance.append_mime_message(request)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->append_mime_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AppendEmailMimeBaseRequest**](AppendEmailMimeBaseRequest.md)| Append email request | 

### Return type

[**ValueResponse**](ValueResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_file**
> copy_file(src_path, dest_path, opts)

Copy file

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

src_path = 'src_path_example' # String | Source file path e.g. '/folder/file.ext'

dest_path = 'dest_path_example' # String | Destination file path

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example', # String | Destination storage name
  version_id: 'version_id_example' # String | File version ID to copy
}

begin
  #Copy file
  api_instance.copy_file(src_path, dest_path, opts)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->copy_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String**| Destination file path | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to copy | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **copy_folder**
> copy_folder(src_path, dest_path, opts)

Copy folder

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

src_path = 'src_path_example' # String | Source folder path e.g. '/src'

dest_path = 'dest_path_example' # String | Destination folder path e.g. '/dst'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example' # String | Destination storage name
}

begin
  #Copy folder
  api_instance.copy_folder(src_path, dest_path, opts)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->copy_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_calendar**
> create_calendar(name, request)

Create calendar file

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Calendar file name in storage

request = AsposeEmailCloud::HierarchicalObjectRequest.new # HierarchicalObjectRequest | 


begin
  #Create calendar file
  api_instance.create_calendar(name, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->create_calendar: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Calendar file name in storage | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_contact**
> create_contact(format, name, request)

Create contact document

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

format = 'format_example' # String | Contact document format

name = 'name_example' # String | Contact document file name

request = AsposeEmailCloud::HierarchicalObjectRequest.new # HierarchicalObjectRequest | Create contact request


begin
  #Create contact document
  api_instance.create_contact(format, name, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->create_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Create contact request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_email**
> EmailDocumentResponse create_email(file_name, request)

Create an email document

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

file_name = 'file_name_example' # String | Email document file name in storage

request = AsposeEmailCloud::CreateEmailRequest.new # CreateEmailRequest | An email document and optional Storage info to specify where the file should be located


begin
  #Create an email document
  result = api_instance.create_email(file_name, request)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->create_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name in storage | 
 **request** | [**CreateEmailRequest**](CreateEmailRequest.md)| An email document and optional Storage info to specify where the file should be located | 

### Return type

[**EmailDocumentResponse**](EmailDocumentResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_email_folder**
> create_email_folder(request)

Create new folder in email account

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::CreateFolderBaseRequest.new # CreateFolderBaseRequest | Create folder request


begin
  #Create new folder in email account
  api_instance.create_email_folder(request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->create_email_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateFolderBaseRequest**](CreateFolderBaseRequest.md)| Create folder request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_folder**
> create_folder(path, opts)

Create the folder

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

path = 'path_example' # String | Folder path to create e.g. 'folder_1/folder_2/'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Create the folder
  api_instance.create_folder(path, opts)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_mapi**
> create_mapi(name, request)

Create new document

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Document file name

request = AsposeEmailCloud::HierarchicalObjectRequest.new # HierarchicalObjectRequest | Create document request


begin
  #Create new document
  api_instance.create_mapi(name, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->create_mapi: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Create document request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_calendar_property**
> delete_calendar_property(name, member_name, index, request)

Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | iCalendar file name in storage

member_name = 'member_name_example' # String | Indexed property name

index = 'index_example' # String | Property index path

request = AsposeEmailCloud::StorageFolderLocation.new # StorageFolderLocation | Storage detail to specify iCalendar file location


begin
  #Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}
  api_instance.delete_calendar_property(name, member_name, index, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->delete_calendar_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **member_name** | **String**| Indexed property name | 
 **index** | **String**| Property index path | 
 **request** | [**StorageFolderLocation**](StorageFolderLocation.md)| Storage detail to specify iCalendar file location | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_contact_property**
> delete_contact_property(format, name, member_name, index, folder)

Delete property from indexed property list

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

format = 'format_example' # String | Contact document format

name = 'name_example' # String | Contact document file name

member_name = 'member_name_example' # String | Indexed property name

index = 56 # Integer | Property index

folder = AsposeEmailCloud::StorageFolderLocation.new # StorageFolderLocation | Calendar document location in storage information


begin
  #Delete property from indexed property list
  api_instance.delete_contact_property(format, name, member_name, index, folder)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->delete_contact_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **member_name** | **String**| Indexed property name | 
 **index** | **Integer**| Property index | 
 **folder** | [**StorageFolderLocation**](StorageFolderLocation.md)| Calendar document location in storage information | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_email_folder**
> delete_email_folder(request)

Delete a folder in email account

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::DeleteFolderBaseRequest.new # DeleteFolderBaseRequest | Delete folder request


begin
  #Delete a folder in email account
  api_instance.delete_email_folder(request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->delete_email_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeleteFolderBaseRequest**](DeleteFolderBaseRequest.md)| Delete folder request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_email_message**
> delete_email_message(request)

Delete message from email account by id

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::DeleteMessageBaseRequest.new # DeleteMessageBaseRequest | Delete message request


begin
  #Delete message from email account by id
  api_instance.delete_email_message(request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->delete_email_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeleteMessageBaseRequest**](DeleteMessageBaseRequest.md)| Delete message request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_file**
> delete_file(path, opts)

Delete file

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

path = 'path_example' # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID to delete
}

begin
  #Delete file
  api_instance.delete_file(path, opts)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->delete_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to delete | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(path, opts)

Delete folder

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

path = 'path_example' # String | Folder path e.g. '/folder'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  recursive: false # BOOLEAN | Enable to delete folders, subfolders and files
}

begin
  #Delete folder
  api_instance.delete_folder(path, opts)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_mapi_attachment**
> delete_mapi_attachment(name, attachment, storage)

Remove attachment from document

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Document file name

attachment = 'attachment_example' # String | Attachment name or index

storage = AsposeEmailCloud::StorageFolderLocation.new # StorageFolderLocation | Document file storage location info


begin
  #Remove attachment from document
  api_instance.delete_mapi_attachment(name, attachment, storage)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->delete_mapi_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment name or index | 
 **storage** | [**StorageFolderLocation**](StorageFolderLocation.md)| Document file storage location info | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_mapi_properties**
> delete_mapi_properties(name, request)

Delete document properties

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Document file name

request = AsposeEmailCloud::HierarchicalObjectRequest.new # HierarchicalObjectRequest | Properties that should be deleted


begin
  #Delete document properties
  api_instance.delete_mapi_properties(name, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->delete_mapi_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be deleted | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **download_file**
> File download_file(path, opts)

Download file

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

path = 'path_example' # String | File path e.g. '/folder/file.ext'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID to download
}

begin
  #Download file
  result = api_instance.download_file(path, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->download_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to download | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: multipart/form-data



# **fetch_email_message**
> MimeResponse fetch_email_message(message_id, first_account, opts)

Fetch message mime from email account

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

message_id = 'message_id_example' # String | Message identifier

first_account = 'first_account_example' # String | Email account

opts = { 
  second_account: 'second_account_example', # String | Additional email account (should be specified for POP/IMAP accounts and should be SMTP account)
  storage: 'storage_example', # String | Storage name where account file(s) located
  storage_folder: 'storage_folder_example' # String | Folder in storage where account file(s) located
}

begin
  #Fetch message mime from email account
  result = api_instance.fetch_email_message(message_id, first_account, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->fetch_email_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message identifier | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 

### Return type

[**MimeResponse**](MimeResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_calendar**
> HierarchicalObject get_calendar(name, opts)

Get calendar file properties

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | iCalendar file name in storage

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example' # String | Storage name
}

begin
  #Get calendar file properties
  result = api_instance.get_calendar(name, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_calendar: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

### Return type

[**HierarchicalObject**](HierarchicalObject.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_calendar_attachment**
> File get_calendar_attachment(name, attachment, opts)

Get iCalendar document attachment by name

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | iCalendar document file name

attachment = 'attachment_example' # String | Attachment name or index

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example' # String | Storage name
}

begin
  #Get iCalendar document attachment by name
  result = api_instance.get_calendar_attachment(name, attachment, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_calendar_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_calendar_list**
> ListResponseOfHierarchicalObjectResponse get_calendar_list(folder, items_per_page, page_number, opts)

Get iCalendar files list in folder on storage

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

folder = 'folder_example' # String | Path to folder in storage

items_per_page = 56 # Integer | Count of items on page

page_number = 56 # Integer | Page number

opts = { 
  storage: 'storage_example' # String | Storage name
}

begin
  #Get iCalendar files list in folder on storage
  result = api_instance.get_calendar_list(folder, items_per_page, page_number, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_calendar_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | 
 **items_per_page** | **Integer**| Count of items on page | 
 **page_number** | **Integer**| Page number | 
 **storage** | **String**| Storage name | [optional] 

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contact_attachment**
> File get_contact_attachment(format, name, attachment, opts)

Get attachment file by name

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

format = 'format_example' # String | Contact document format

name = 'name_example' # String | Contact document file name

attachment = 'attachment_example' # String | Attachment name or index

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example' # String | Storage name
}

begin
  #Get attachment file by name
  result = api_instance.get_contact_attachment(format, name, attachment, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_contact_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contact_list**
> ListResponseOfHierarchicalObjectResponse get_contact_list(format, opts)

Get contact list from storage folder

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

format = 'format_example' # String | Contact document format

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example', # String | Storage name
  items_per_page: 10, # Integer | Count of items on page
  page_number: 0 # Integer | Page number
}

begin
  #Get contact list from storage folder
  result = api_instance.get_contact_list(format, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_contact_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contact_properties**
> HierarchicalObject get_contact_properties(format, name, opts)

Get contact document properties

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

format = 'format_example' # String | Contact document format

name = 'name_example' # String | Contact document file name

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example' # String | Storage name
}

begin
  #Get contact document properties
  result = api_instance.get_contact_properties(format, name, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_contact_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

### Return type

[**HierarchicalObject**](HierarchicalObject.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_disc_usage**
> DiscUsage get_disc_usage(opts)

Get disc usage

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get disc usage
  result = api_instance.get_disc_usage(opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_disc_usage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**DiscUsage**](DiscUsage.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_email**
> EmailDocument get_email(file_name, opts)

Get email document

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

file_name = 'file_name_example' # String | Email document file name in storage

opts = { 
  storage: 'storage_example', # String | Storage name
  folder: 'folder_example' # String | Path to folder in storage
}

begin
  #Get email document
  result = api_instance.get_email(file_name, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name in storage | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

### Return type

[**EmailDocument**](EmailDocument.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_email_attachment**
> File get_email_attachment(attachment, file_name, opts)

Get email attachment by name

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

attachment = 'attachment_example' # String | Attachment name

file_name = 'file_name_example' # String | Email document file name

opts = { 
  storage: 'storage_example', # String | Storage name
  folder: 'folder_example' # String | Path to folder in storage
}

begin
  #Get email attachment by name
  result = api_instance.get_email_attachment(attachment, file_name, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_email_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment** | **String**| Attachment name | 
 **file_name** | **String**| Email document file name | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_email_property**
> EmailPropertyResponse get_email_property(property_name, file_name, opts)

Get an email document property by its name

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

property_name = 'property_name_example' # String | A property name

file_name = 'file_name_example' # String | Email document file name

opts = { 
  storage: 'storage_example', # String | Storage name
  folder: 'folder_example' # String | Path to folder in storage
}

begin
  #Get an email document property by its name
  result = api_instance.get_email_property(property_name, file_name, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_email_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_name** | **String**| A property name | 
 **file_name** | **String**| Email document file name | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_file_versions**
> FileVersions get_file_versions(path, opts)

Get file versions

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

path = 'path_example' # String | File path e.g. '/file.ext'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get file versions
  result = api_instance.get_file_versions(path, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_file_versions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FileVersions**](FileVersions.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_files_list**
> FilesList get_files_list(path, opts)

Get all files and folders within a folder

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

path = 'path_example' # String | Folder path e.g. '/folder'

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Get all files and folders within a folder
  result = api_instance.get_files_list(path, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_files_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesList**](FilesList.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mapi_attachment**
> File get_mapi_attachment(name, attachment, opts)

Get document attachment as file stream

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Document file name

attachment = 'attachment_example' # String | Attachment name or index

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example' # String | Storage name
}

begin
  #Get document attachment as file stream
  result = api_instance.get_mapi_attachment(name, attachment, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_mapi_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

### Return type

**File**

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mapi_attachments**
> ListResponseOfString get_mapi_attachments(name, opts)

Get document attachment list

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Document file name

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example' # String | Storage name
}

begin
  #Get document attachment list
  result = api_instance.get_mapi_attachments(name, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_mapi_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

### Return type

[**ListResponseOfString**](ListResponseOfString.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mapi_list**
> ListResponseOfHierarchicalObjectResponse get_mapi_list(opts)

Get document list from storage folder

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example', # String | Storage name
  items_per_page: 10, # Integer | Count of items on page
  page_number: 0 # Integer | Page number
}

begin
  #Get document list from storage folder
  result = api_instance.get_mapi_list(opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_mapi_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mapi_properties**
> HierarchicalObjectResponse get_mapi_properties(name, opts)

Get document properties

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Document file name

opts = { 
  folder: 'folder_example', # String | Path to folder in storage
  storage: 'storage_example' # String | Storage name
}

begin
  #Get document properties
  result = api_instance.get_mapi_properties(name, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->get_mapi_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

### Return type

[**HierarchicalObjectResponse**](HierarchicalObjectResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_email_folders**
> ListFoldersResponse list_email_folders(first_account, opts)

Get folders list in email account

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

first_account = 'first_account_example' # String | Email account

opts = { 
  second_account: 'second_account_example', # String | Additional email account (should be specified for POP/IMAP accounts and should be SMTP account)
  storage: 'storage_example', # String | Storage name where account file(s) located
  storage_folder: 'storage_folder_example', # String | Folder in storage where account file(s) located
  parent_folder: 'parent_folder_example' # String | Folder in which subfolders should be listed
}

begin
  #Get folders list in email account
  result = api_instance.list_email_folders(first_account, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->list_email_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **parent_folder** | **String**| Folder in which subfolders should be listed | [optional] 

### Return type

[**ListFoldersResponse**](ListFoldersResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_email_messages**
> ListMessagesResponse list_email_messages(folder, query_string, first_account, opts)

Get messages from folder, filtered by query

The query string should have the following view.  The example of a simple expression:   '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.  The number of simple expressions can make a compound one, ex.: (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3>,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator  At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message  Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message  Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item  Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once  The field value (<Field value>) can take the following values: For text fields - any string, For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\", For flags (fields of boolean type) - either \"True\", or \"False\"

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

folder = 'folder_example' # String | A folder in email account

query_string = 'query_string_example' # String | A MailQuery search string

first_account = 'first_account_example' # String | Email account

opts = { 
  second_account: 'second_account_example', # String | Additional email account (should be specified for POP/IMAP accounts and should be SMTP account)
  storage: 'storage_example', # String | Storage name where account file(s) located
  storage_folder: 'storage_folder_example', # String | Folder in storage where account file(s) located
  recursive: false # BOOLEAN | Specifies that should message be searched in subfolders recursively
}

begin
  #Get messages from folder, filtered by query
  result = api_instance.list_email_messages(folder, query_string, first_account, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->list_email_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| A folder in email account | 
 **query_string** | **String**| A MailQuery search string | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **recursive** | **BOOLEAN**| Specifies that should message be searched in subfolders recursively | [optional] [default to false]

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_file**
> move_file(src_path, dest_path, opts)

Move file

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

src_path = 'src_path_example' # String | Source file path e.g. '/src.ext'

dest_path = 'dest_path_example' # String | Destination file path e.g. '/dest.ext'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example', # String | Destination storage name
  version_id: 'version_id_example' # String | File version ID to move
}

begin
  #Move file
  api_instance.move_file(src_path, dest_path, opts)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->move_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to move | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **move_folder**
> move_folder(src_path, dest_path, opts)

Move folder

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

src_path = 'src_path_example' # String | Folder path to move e.g. '/folder'

dest_path = 'dest_path_example' # String | Destination folder path to move to e.g '/dst'

opts = { 
  src_storage_name: 'src_storage_name_example', # String | Source storage name
  dest_storage_name: 'dest_storage_name_example' # String | Destination storage name
}

begin
  #Move folder
  api_instance.move_folder(src_path, dest_path, opts)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->move_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **object_exists**
> ObjectExist object_exists(path, opts)

Check if file or folder exists

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

path = 'path_example' # String | File or folder path e.g. '/file.ext' or '/folder'

opts = { 
  storage_name: 'storage_name_example', # String | Storage name
  version_id: 'version_id_example' # String | File version ID
}

begin
  #Check if file or folder exists
  result = api_instance.object_exists(path, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->object_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

### Return type

[**ObjectExist**](ObjectExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **save_mail_account**
> save_mail_account(request)

Create email account file (*.account) with login/password authentication

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::SaveEmailAccountRequest.new # SaveEmailAccountRequest | Email account information


begin
  #Create email account file (*.account) with login/password authentication
  api_instance.save_mail_account(request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->save_mail_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SaveEmailAccountRequest**](SaveEmailAccountRequest.md)| Email account information | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **save_mail_o_auth_account**
> save_mail_o_auth_account(request)

Create email account file (*.account) with OAuth

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::SaveOAuthEmailAccountRequest.new # SaveOAuthEmailAccountRequest | Email account information


begin
  #Create email account file (*.account) with OAuth
  api_instance.save_mail_o_auth_account(request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->save_mail_o_auth_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SaveOAuthEmailAccountRequest**](SaveOAuthEmailAccountRequest.md)| Email account information | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_email**
> send_email(request)

Send an email from *.eml file located on storage

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::SendEmailBaseRequest.new # SendEmailBaseRequest | Send email request


begin
  #Send an email from *.eml file located on storage
  api_instance.send_email(request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->send_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendEmailBaseRequest**](SendEmailBaseRequest.md)| Send email request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_email_mime**
> send_email_mime(request)

Send an email specified by MIME in request

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::SendEmailMimeBaseRequest.new # SendEmailMimeBaseRequest | Send email request


begin
  #Send an email specified by MIME in request
  api_instance.send_email_mime(request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->send_email_mime: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendEmailMimeBaseRequest**](SendEmailMimeBaseRequest.md)| Send email request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_email_property**
> EmailPropertyResponse set_email_property(property_name, file_name, request)

Set email document property value

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

property_name = 'property_name_example' # String | A property name that should be changed

file_name = 'file_name_example' # String | Email document file name

request = AsposeEmailCloud::SetEmailPropertyRequest.new # SetEmailPropertyRequest | A property that should be changed and optional Storage info to specify             where the file located


begin
  #Set email document property value
  result = api_instance.set_email_property(property_name, file_name, request)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->set_email_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_name** | **String**| A property name that should be changed | 
 **file_name** | **String**| Email document file name | 
 **request** | [**SetEmailPropertyRequest**](SetEmailPropertyRequest.md)| A property that should be changed and optional Storage info to specify             where the file located | 

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **set_email_read_flag**
> set_email_read_flag(request)

Sets \"Message is read\" flag

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

request = AsposeEmailCloud::SetMessageReadFlagAccountBaseRequest.new # SetMessageReadFlagAccountBaseRequest | Message is read request


begin
  #Sets \"Message is read\" flag
  api_instance.set_email_read_flag(request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->set_email_read_flag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SetMessageReadFlagAccountBaseRequest**](SetMessageReadFlagAccountBaseRequest.md)| Message is read request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **storage_exists**
> StorageExist storage_exists(storage_name)

Check if storage exists

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

storage_name = 'storage_name_example' # String | Storage name


begin
  #Check if storage exists
  result = api_instance.storage_exists(storage_name)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->storage_exists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

### Return type

[**StorageExist**](StorageExist.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_calendar_properties**
> update_calendar_properties(name, request)

Update calendar file properties

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | iCalendar file name in storage

request = AsposeEmailCloud::HierarchicalObjectRequest.new # HierarchicalObjectRequest | Calendar properties update request


begin
  #Update calendar file properties
  api_instance.update_calendar_properties(name, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->update_calendar_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Calendar properties update request | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_contact_properties**
> update_contact_properties(format, name, request)

Update contact document properties

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

format = 'format_example' # String | Contact document format

name = 'name_example' # String | Contact document file name

request = AsposeEmailCloud::HierarchicalObjectRequest.new # HierarchicalObjectRequest | Properties that should be updated/added


begin
  #Update contact document properties
  api_instance.update_contact_properties(format, name, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->update_contact_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be updated/added | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_mapi_properties**
> update_mapi_properties(name, request)

Update document properties

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

name = 'name_example' # String | Document file name

request = AsposeEmailCloud::HierarchicalObjectRequest.new # HierarchicalObjectRequest | Properties that should be updated/added


begin
  #Update document properties
  api_instance.update_mapi_properties(name, request)
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->update_mapi_properties: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be updated/added | 

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_file**
> FilesUploadResult upload_file(path, file, opts)

Upload file

### Example
```ruby
# load the gem
require 'aspose-email-cloud'
# setup authorization
AsposeEmailCloud.configure do |config|
  # Configure OAuth2 access token for authorization: JWT
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = AsposeEmailCloud::EmailApi.new

path = 'path_example' # String | Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.             

file = File.new('/path/to/file.txt') # File | File to upload

opts = { 
  storage_name: 'storage_name_example' # String | Storage name
}

begin
  #Upload file
  result = api_instance.upload_file(path, file, opts)
  p result
rescue AsposeEmailCloud::ApiError => e
  puts "Exception when calling EmailApi->upload_file: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File**| File to upload | 
 **storage_name** | **String**| Storage name | [optional] 

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### Authorization

[JWT](../README.md#JWT)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



