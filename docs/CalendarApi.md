# CalendarApi

<a name="add_calendar_attachment"></a>
# **add_calendar_attachment**
> add_calendar_attachment(request)

Adds an attachment to iCalendar file

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::AddCalendarAttachmentRequestData.new(name, attachment, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Calendar file name in storage | 
 **attachment** | **String**| Attachment file name in storage | 
 **request** | [**AddAttachmentRequest**](AddAttachmentRequest.md)| Storage name and folder path for calendar and attachment files | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="create_calendar"></a>
# **create_calendar**
> create_calendar(request)

Create calendar file

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::CreateCalendarRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Calendar file name in storage | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)|  | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="delete_calendar_property"></a>
# **delete_calendar_property**
> delete_calendar_property(request)

Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::DeleteCalendarPropertyRequestData.new(name, member_name, index, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **member_name** | **String**| Indexed property name | 
 **index** | **String**| Property index path | 
 **request** | [**StorageFolderLocation**](StorageFolderLocation.md)| Storage detail to specify iCalendar file location | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="get_calendar"></a>
# **get_calendar**
> get_calendar(request)

Get calendar file properties

### Return type

[**HierarchicalObject**](HierarchicalObject.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::GetCalendarRequestData.new(name, folder=folder, storage=storage)
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
request = AsposeEmailCloud::GetCalendarAttachmentRequestData.new(name, attachment, folder=folder, storage=storage)
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
request = AsposeEmailCloud::GetCalendarListRequestData.new(folder, items_per_page, page_number, storage=storage)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder** | **String**| Path to folder in storage | 
 **items_per_page** | **Integer**| Count of items on page | 
 **page_number** | **Integer**| Page number | 
 **storage** | **String**| Storage name | [optional] 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="update_calendar_properties"></a>
# **update_calendar_properties**
> update_calendar_properties(request)

Update calendar file properties

### Return type

nil (empty response body)

### Request Parameters
```ruby
request = AsposeEmailCloud::UpdateCalendarPropertiesRequestData.new(name, request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| iCalendar file name in storage | 
 **request** | [**HierarchicalObjectRequest**](HierarchicalObjectRequest.md)| Calendar properties update request | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

