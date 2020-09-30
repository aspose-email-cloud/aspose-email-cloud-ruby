# ClientThreadApi (EmailCloud.client.thread)

Email client thread operations.

<a name="delete"></a>
## delete

Description: Delete thread by id. All messages from thread will also be deleted.             

Method call example:
```ruby
api.client.thread.delete(request)
```

### Parameter: request

Description: Delete email thread request.

See parameter model documentation at [ClientThreadDeleteRequest](ClientThreadDeleteRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientThreadDeleteRequest.new(
  folder: 'INBOX/SubFolder',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ClientThreadDeleteRequest.new(
  folder: 'INBOX/SubFolder',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))

// Call method:
api.client.thread.delete(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get_list"></a>
## get_list

Description: Get message threads from folder. All messages are partly fetched (without email body and some other fields).             

Returns: List of threads

Method call example:
```ruby
result = api.client.thread.get_list(request)
```

### Parameter: request

Description: get_list method request.

See parameter model documentation at [ClientThreadGetListRequest](ClientThreadGetListRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientThreadGetListRequest.new(
    folder: 'INBOX/SubFolder',
    account: 'email.account',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage')
```

</details>

### Result

Description: List of threads

Return type: [**EmailThreadList**](EmailThreadList.md)

<details>
    <summary>Result example</summary>

```ruby
result = EmailThreadList.new(
  value: [
    EmailThread.new(
      id: '123',
      subject: 'Some email subject',
      messages: [
        EmailDto.new(
          date: DateTime.now,
          from: MailAddress.new(
            address: 'from@aspose.com'),
          message_id: '1',
          subject: 'Some email subject',
          to: [
            MailAddress.new(
              address: 'to@aspose.com')]),
        EmailDto.new(
          date: DateTime.now,
          from: MailAddress.new(
            address: 'from@aspose.com'),
          message_id: '3',
          subject: 'Re: Some email subject',
          to: [
            MailAddress.new(
              address: 'to@aspose.com')])])])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ClientThreadGetListRequest.new(
    folder: 'INBOX/SubFolder',
    account: 'email.account',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage')

// Call method:
result = api.client.thread.get_list(request)

// Result example:
result = EmailThreadList.new(
  value: [
    EmailThread.new(
      id: '123',
      subject: 'Some email subject',
      messages: [
        EmailDto.new(
          date: DateTime.now,
          from: MailAddress.new(
            address: 'from@aspose.com'),
          message_id: '1',
          subject: 'Some email subject',
          to: [
            MailAddress.new(
              address: 'to@aspose.com')]),
        EmailDto.new(
          date: DateTime.now,
          from: MailAddress.new(
            address: 'from@aspose.com'),
          message_id: '3',
          subject: 'Re: Some email subject',
          to: [
            MailAddress.new(
              address: 'to@aspose.com')])])])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get_messages"></a>
## get_messages

Description: Get messages from thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             

Returns: Requested thread with fully fetched messages

Method call example:
```ruby
result = api.client.thread.get_messages(request)
```

### Parameter: request

Description: get_messages method request.

See parameter model documentation at [ClientThreadGetMessagesRequest](ClientThreadGetMessagesRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientThreadGetMessagesRequest.new(
    thread_id: '5',
    account: 'email.account',
    folder: 'INBOX',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage')
```

</details>

### Result

Description: Requested thread with fully fetched messages

Return type: [**EmailList**](EmailList.md)

<details>
    <summary>Result example</summary>

```ruby
result = 
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ClientThreadGetMessagesRequest.new(
    thread_id: '5',
    account: 'email.account',
    folder: 'INBOX',
    storage: 'First Storage',
    account_storage_folder: 'email/account/location/on/storage')

// Call method:
result = api.client.thread.get_messages(request)

// Result example:
result = 
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="move"></a>
## move

Description: Move thread to another folder.             

Method call example:
```ruby
api.client.thread.move(request)
```

### Parameter: request

Description: Move thread request.

See parameter model documentation at [ClientThreadMoveRequest](ClientThreadMoveRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientThreadMoveRequest.new(
  destination_folder: 'INBOX/SubFolder',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ClientThreadMoveRequest.new(
  destination_folder: 'INBOX/SubFolder',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))

// Call method:
api.client.thread.move(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="set_is_read"></a>
## set_is_read

Description: Mark all messages in thread as read or unread.             

Method call example:
```ruby
api.client.thread.set_is_read(request)
```

### Parameter: request

Description: Email account specifier and IsRead flag.

See parameter model documentation at [ClientThreadSetIsReadRequest](ClientThreadSetIsReadRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ClientThreadSetIsReadRequest.new(
  is_read: true,
  folder: 'INBOX',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))
```

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ClientThreadSetIsReadRequest.new(
  is_read: true,
  folder: 'INBOX',
  thread_id: '5',
  account_location: StorageFileLocation.new(
    file_name: 'email.account',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'))

// Call method:
api.client.thread.set_is_read(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

