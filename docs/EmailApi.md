# EmailApi

<a name="add_calendar_attachment"></a>
# **add_calendar_attachment**
> add_calendar_attachment(request)

Adds an attachment to iCalendar file

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,attachment,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Calendar file name in storage | 
 **attachment** | **String**| Attachment file name in storage | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Storage name and folder path for calendar and attachment files | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="add_contact_attachment"></a>
# **add_contact_attachment**
> add_contact_attachment(request)

Add attachment to contact document

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(format,name,attachment,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **attachment** | **String**| Attachment name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Add attachment request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="add_email_attachment"></a>
# **add_email_attachment**
> add_email_attachment(request)

Adds an attachment to Email document

### Return type

[**EmailDocumentResponse**](EmailDocumentResponse.md)

### Request Parameters
```ruby
def initialize(attachment_name,file_name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_name** | **String**| Attachment file name | 
 **file_name** | **String**| Email document file name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Storage info to specify location of email document and attachment files | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="add_mapi_attachment"></a>
# **add_mapi_attachment**
> add_mapi_attachment(request)

Add attachment to document

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,attachment,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment file name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Add attachment request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="append_email_message"></a>
# **append_email_message**
> append_email_message(request)

Adds an email from *.eml file to specified folder in email account

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AppendEmailBaseRequest**](AppendEmailBaseRequest.md)| Append email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="append_mime_message"></a>
# **append_mime_message**
> append_mime_message(request)

Adds an email from MIME to specified folder in email account

### Return type

[**ValueResponse**](ValueResponse.md)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**AppendEmailMimeBaseRequest**](AppendEmailMimeBaseRequest.md)| Append email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="copy_file"></a>
# **copy_file**
> copy_file(request)

Copy file

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(src_path,dest_path,src_storage_name=src_storage_name,dest_storage_name=dest_storage_name,version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/folder/file.ext&#39; | 
 **dest_path** | **String**| Destination file path | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to copy | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="copy_folder"></a>
# **copy_folder**
> copy_folder(request)

Copy folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(src_path,dest_path,src_storage_name=src_storage_name,dest_storage_name=dest_storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source folder path e.g. &#39;/src&#39; | 
 **dest_path** | **String**| Destination folder path e.g. &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_calendar"></a>
# **create_calendar**
> create_calendar(request)

Create calendar file

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Calendar file name in storage | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)|  | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_contact"></a>
# **create_contact**
> create_contact(request)

Create contact document

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(format,name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Create contact request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_email"></a>
# **create_email**
> create_email(request)

Create an email document

### Return type

[**EmailDocumentResponse**](EmailDocumentResponse.md)

### Request Parameters
```ruby
def initialize(file_name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name in storage | 
 **request** | [**CreateEmailRequest**](CreateEmailRequest.md)| An email document and optional Storage info to specify where the file should be located | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_email_folder"></a>
# **create_email_folder**
> create_email_folder(request)

Create new folder in email account

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CreateFolderBaseRequest**](CreateFolderBaseRequest.md)| Create folder request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_folder"></a>
# **create_folder**
> create_folder(request)

Create the folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(path,storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path to create e.g. &#39;folder_1/folder_2/&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_mapi"></a>
# **create_mapi**
> create_mapi(request)

Create new document

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Create document request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_calendar_property"></a>
# **delete_calendar_property**
> delete_calendar_property(request)

Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,member_name,index,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **member_name** | **String**| Indexed property name | 
 **index** | **String**| Property index path | 
 **request** | [**StorageFolderLocation**](StorageFolderLocation.md)| Storage detail to specify iCalendar file location | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_contact_property"></a>
# **delete_contact_property**
> delete_contact_property(request)

Delete property from indexed property list

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(format,name,member_name,index,folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **member_name** | **String**| Indexed property name | 
 **index** | **Integer**| Property index | 
 **folder** | [**StorageFolderLocation**](StorageFolderLocation.md)| Calendar document location in storage information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_email_folder"></a>
# **delete_email_folder**
> delete_email_folder(request)

Delete a folder in email account

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeleteFolderBaseRequest**](DeleteFolderBaseRequest.md)| Delete folder request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_email_message"></a>
# **delete_email_message**
> delete_email_message(request)

Delete message from email account by id

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**DeleteMessageBaseRequest**](DeleteMessageBaseRequest.md)| Delete message request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_file"></a>
# **delete_file**
> delete_file(request)

Delete file

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(path,storage_name=storage_name,version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to delete | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_folder"></a>
# **delete_folder**
> delete_folder(request)

Delete folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(path,storage_name=storage_name,recursive=recursive)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **recursive** | **BOOLEAN**| Enable to delete folders, subfolders and files | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_mapi_attachment"></a>
# **delete_mapi_attachment**
> delete_mapi_attachment(request)

Remove attachment from document

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,attachment,storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment name or index | 
 **storage** | [**StorageFolderLocation**](StorageFolderLocation.md)| Document file storage location info | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_mapi_properties"></a>
# **delete_mapi_properties**
> delete_mapi_properties(request)

Delete document properties

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be deleted | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="download_file"></a>
# **download_file**
> download_file(request)

Download file

### Return type

**file**

### Request Parameters
```ruby
def initialize(path,storage_name=storage_name,version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/folder/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID to download | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="fetch_email_message"></a>
# **fetch_email_message**
> fetch_email_message(request)

Fetch message mime from email account

### Return type

[**MimeResponse**](MimeResponse.md)

### Request Parameters
```ruby
def initialize(message_id,first_account,second_account=second_account,storage=storage,storage_folder=storage_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| Message identifier | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar"></a>
# **get_calendar**
> get_calendar(request)

Get calendar file properties

### Return type

[**HierarchicalObject**](HierarchicalObject.md)

### Request Parameters
```ruby
def initialize(name,folder=folder,storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar_attachment"></a>
# **get_calendar_attachment**
> get_calendar_attachment(request)

Get iCalendar document attachment by name

### Return type

**File**

### Request Parameters
```ruby
def initialize(name,attachment,folder=folder,storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar_list"></a>
# **get_calendar_list**
> get_calendar_list(request)

Get iCalendar files list in folder on storage

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Request Parameters
```ruby
def initialize(folder,items_per_page,page_number,storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | 
 **items_per_page** | **Integer**| Count of items on page | 
 **page_number** | **Integer**| Page number | 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_attachment"></a>
# **get_contact_attachment**
> get_contact_attachment(request)

Get attachment file by name

### Return type

**File**

### Request Parameters
```ruby
def initialize(format,name,attachment,folder=folder,storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_list"></a>
# **get_contact_list**
> get_contact_list(request)

Get contact list from storage folder

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Request Parameters
```ruby
def initialize(format,folder=folder,storage=storage,items_per_page=items_per_page,page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_contact_properties"></a>
# **get_contact_properties**
> get_contact_properties(request)

Get contact document properties

### Return type

[**HierarchicalObject**](HierarchicalObject.md)

### Request Parameters
```ruby
def initialize(format,name,folder=folder,storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_disc_usage"></a>
# **get_disc_usage**
> get_disc_usage(request)

Get disc usage

### Return type

[**DiscUsage**](DiscUsage.md)

### Request Parameters
```ruby
def initialize(storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email"></a>
# **get_email**
> get_email(request)

Get email document

### Return type

[**EmailDocument**](EmailDocument.md)

### Request Parameters
```ruby
def initialize(file_name,storage=storage,folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name in storage | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_attachment"></a>
# **get_email_attachment**
> get_email_attachment(request)

Get email attachment by name

### Return type

**File**

### Request Parameters
```ruby
def initialize(attachment,file_name,storage=storage,folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment** | **String**| Attachment name | 
 **file_name** | **String**| Email document file name | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email_property"></a>
# **get_email_property**
> get_email_property(request)

Get an email document property by its name

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Request Parameters
```ruby
def initialize(property_name,file_name,storage=storage,folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_name** | **String**| A property name | 
 **file_name** | **String**| Email document file name | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_file_versions"></a>
# **get_file_versions**
> get_file_versions(request)

Get file versions

### Return type

[**FileVersions**](FileVersions.md)

### Request Parameters
```ruby
def initialize(path,storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File path e.g. &#39;/file.ext&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_files_list"></a>
# **get_files_list**
> get_files_list(request)

Get all files and folders within a folder

### Return type

[**FilesList**](FilesList.md)

### Request Parameters
```ruby
def initialize(path,storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Folder path e.g. &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_attachment"></a>
# **get_mapi_attachment**
> get_mapi_attachment(request)

Get document attachment as file stream

### Return type

**File**

### Request Parameters
```ruby
def initialize(name,attachment,folder=folder,storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **attachment** | **String**| Attachment name or index | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_attachments"></a>
# **get_mapi_attachments**
> get_mapi_attachments(request)

Get document attachment list

### Return type

[**ListResponseOfString**](ListResponseOfString.md)

### Request Parameters
```ruby
def initialize(name,folder=folder,storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_list"></a>
# **get_mapi_list**
> get_mapi_list(request)

Get document list from storage folder

### Return type

[**ListResponseOfHierarchicalObjectResponse**](ListResponseOfHierarchicalObjectResponse.md)

### Request Parameters
```ruby
def initialize(folder=folder,storage=storage,items_per_page=items_per_page,page_number=page_number)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 
 **items_per_page** | **Integer**| Count of items on page | [optional] [default to 10]
 **page_number** | **Integer**| Page number | [optional] [default to 0]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_mapi_properties"></a>
# **get_mapi_properties**
> get_mapi_properties(request)

Get document properties

### Return type

[**HierarchicalObjectResponse**](HierarchicalObjectResponse.md)

### Request Parameters
```ruby
def initialize(name,folder=folder,storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **folder** | **String**| Path to folder in storage | [optional] 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="list_email_folders"></a>
# **list_email_folders**
> list_email_folders(request)

Get folders list in email account

### Return type

[**ListFoldersResponse**](ListFoldersResponse.md)

### Request Parameters
```ruby
def initialize(first_account,second_account=second_account,storage=storage,storage_folder=storage_folder,parent_folder=parent_folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **parent_folder** | **String**| Folder in which subfolders should be listed | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="list_email_messages"></a>
# **list_email_messages**
> list_email_messages(request)

Get messages from folder, filtered by query

The query string should have the following view.  The example of a simple expression:   '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.  The number of simple expressions can make a compound one, ex.: (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3>,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator  At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message  Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message  Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item  Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once  The field value (<Field value>) can take the following values: For text fields - any string, For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\", For flags (fields of boolean type) - either \"True\", or \"False\"

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Request Parameters
```ruby
def initialize(folder,query_string,first_account,second_account=second_account,storage=storage,storage_folder=storage_folder,recursive=recursive)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| A folder in email account | 
 **query_string** | **String**| A MailQuery search string | 
 **first_account** | **String**| Email account | 
 **second_account** | **String**| Additional email account (should be specified for POP/IMAP accounts and should be SMTP account) | [optional] 
 **storage** | **String**| Storage name where account file(s) located | [optional] 
 **storage_folder** | **String**| Folder in storage where account file(s) located | [optional] 
 **recursive** | **BOOLEAN**| Specifies that should message be searched in subfolders recursively | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="move_file"></a>
# **move_file**
> move_file(request)

Move file

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(src_path,dest_path,src_storage_name=src_storage_name,dest_storage_name=dest_storage_name,version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Source file path e.g. &#39;/src.ext&#39; | 
 **dest_path** | **String**| Destination file path e.g. &#39;/dest.ext&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 
 **version_id** | **String**| File version ID to move | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="move_folder"></a>
# **move_folder**
> move_folder(request)

Move folder

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(src_path,dest_path,src_storage_name=src_storage_name,dest_storage_name=dest_storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_path** | **String**| Folder path to move e.g. &#39;/folder&#39; | 
 **dest_path** | **String**| Destination folder path to move to e.g &#39;/dst&#39; | 
 **src_storage_name** | **String**| Source storage name | [optional] 
 **dest_storage_name** | **String**| Destination storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="object_exists"></a>
# **object_exists**
> object_exists(request)

Check if file or folder exists

### Return type

[**ObjectExist**](ObjectExist.md)

### Request Parameters
```ruby
def initialize(path,storage_name=storage_name,version_id=version_id)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39; | 
 **storage_name** | **String**| Storage name | [optional] 
 **version_id** | **String**| File version ID | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_mail_account"></a>
# **save_mail_account**
> save_mail_account(request)

Create email account file (*.account) with login/password authentication

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SaveEmailAccountRequest**](SaveEmailAccountRequest.md)| Email account information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="save_mail_o_auth_account"></a>
# **save_mail_o_auth_account**
> save_mail_o_auth_account(request)

Create email account file (*.account) with OAuth

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SaveOAuthEmailAccountRequest**](SaveOAuthEmailAccountRequest.md)| Email account information | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="send_email"></a>
# **send_email**
> send_email(request)

Send an email from *.eml file located on storage

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendEmailBaseRequest**](SendEmailBaseRequest.md)| Send email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="send_email_mime"></a>
# **send_email_mime**
> send_email_mime(request)

Send an email specified by MIME in request

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SendEmailMimeBaseRequest**](SendEmailMimeBaseRequest.md)| Send email request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="set_email_property"></a>
# **set_email_property**
> set_email_property(request)

Set email document property value

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Request Parameters
```ruby
def initialize(property_name,file_name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_name** | **String**| A property name that should be changed | 
 **file_name** | **String**| Email document file name | 
 **request** | [**SetEmailPropertyRequest**](SetEmailPropertyRequest.md)| A property that should be changed and optional Storage info to specify             where the file located | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="set_email_read_flag"></a>
# **set_email_read_flag**
> set_email_read_flag(request)

Sets \"Message is read\" flag

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**SetMessageReadFlagAccountBaseRequest**](SetMessageReadFlagAccountBaseRequest.md)| Message is read request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="storage_exists"></a>
# **storage_exists**
> storage_exists(request)

Check if storage exists

### Return type

[**StorageExist**](StorageExist.md)

### Request Parameters
```ruby
def initialize(storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storage_name** | **String**| Storage name | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_calendar_properties"></a>
# **update_calendar_properties**
> update_calendar_properties(request)

Update calendar file properties

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Calendar properties update request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_contact_properties"></a>
# **update_contact_properties**
> update_contact_properties(request)

Update contact document properties

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(format,name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Contact document format | 
 **name** | **String**| Contact document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be updated/added | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_mapi_properties"></a>
# **update_mapi_properties**
> update_mapi_properties(request)

Update document properties

### Return type

nil (empty response body)

### Request Parameters
```ruby
def initialize(name,request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Document file name | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Properties that should be updated/added | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="upload_file"></a>
# **upload_file**
> upload_file(request)

Upload file

### Return type

[**FilesUploadResult**](FilesUploadResult.md)

### Request Parameters
```ruby
def initialize(path,file,storage_name=storage_name)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **String**| Path where to upload including filename and extension e.g. /file.ext or /Folder 1/file.ext             If the content is multipart and path does not contains the file name it tries to get them from filename parameter             from Content-Disposition header.              | 
 **file** | **File**| File to upload | 
 **storage_name** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

