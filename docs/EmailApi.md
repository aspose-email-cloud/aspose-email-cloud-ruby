# EmailApi

<a name="add_email_attachment"></a>
# **add_email_attachment**
> add_email_attachment(request)

Adds an attachment to Email document

### Return type

[**EmailDocumentResponse**](EmailDocumentResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::AddEmailAttachmentRequestData.new(attachment_name, file_name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_name** | **String**| Attachment file name | 
 **file_name** | **String**| Email document file name | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Storage info to specify location of email document and attachment files | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_email"></a>
# **create_email**
> create_email(request)

Create an email document

### Return type

[**EmailDocumentResponse**](EmailDocumentResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateEmailRequestData.new(file_name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_name** | **String**| Email document file name in storage | 
 **request** | [**CreateEmailRequest**](CreateEmailRequest.md)| An email document and optional Storage info to specify where the file should be located | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_email"></a>
# **get_email**
> get_email(request)

Get email document

### Return type

[**EmailDocument**](EmailDocument.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetEmailRequestData.new(file_name, storage=storage, folder=folder)
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
request = AsposeEmailCloud::GetEmailAttachmentRequestData.new(attachment, file_name, storage=storage, folder=folder)
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
request = AsposeEmailCloud::GetEmailPropertyRequestData.new(property_name, file_name, storage=storage, folder=folder)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_name** | **String**| A property name | 
 **file_name** | **String**| Email document file name | 
 **storage** | **String**| Storage name | [optional] 
 **folder** | **String**| Path to folder in storage | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="set_email_property"></a>
# **set_email_property**
> set_email_property(request)

Set email document property value

### Return type

[**EmailPropertyResponse**](EmailPropertyResponse.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::SetEmailPropertyRequestData.new(property_name, file_name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_name** | **String**| A property name that should be changed | 
 **file_name** | **String**| Email document file name | 
 **request** | [**SetEmailPropertyRequest**](SetEmailPropertyRequest.md)| A property that should be changed and optional Storage info to specify             where the file located | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

