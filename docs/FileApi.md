# FileApi (EmailCloud.cloud_storage.file)

File operations controller

<a name="copy_file"></a>
## copy_file

Description: Copy file

Method call example:
```ruby
api.cloud_storage.file.copy_file(request)
```

### Parameter: request

Description: copy_file method request.

See parameter model documentation at [CopyFileRequest](CopyFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = CopyFileRequest.new(
    src_path: '/storage/path/to/source/file.ext',
    dest_path: '/storage/path/to/destination/file.ext',
    src_storage_name: 'First Storage',
    dest_storage_name: 'Other Storage')
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
request = CopyFileRequest.new(
    src_path: '/storage/path/to/source/file.ext',
    dest_path: '/storage/path/to/destination/file.ext',
    src_storage_name: 'First Storage',
    dest_storage_name: 'Other Storage')

// Call method:
api.cloud_storage.file.copy_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="delete_file"></a>
## delete_file

Description: Delete file

Method call example:
```ruby
api.cloud_storage.file.delete_file(request)
```

### Parameter: request

Description: delete_file method request.

See parameter model documentation at [DeleteFileRequest](DeleteFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = DeleteFileRequest.new(
    path: '/storage/path/to/file.ext',
    storage_name: 'First Storage')
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
request = DeleteFileRequest.new(
    path: '/storage/path/to/file.ext',
    storage_name: 'First Storage')

// Call method:
api.cloud_storage.file.delete_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="download_file"></a>
## download_file

Description: Download file

Returns: The raw data of the file.

Method call example:
```ruby
result = api.cloud_storage.file.download_file(request)
```

### Parameter: request

Description: download_file method request.

See parameter model documentation at [DownloadFileRequest](DownloadFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = DownloadFileRequest.new(
    path: '/storage/path/to/file.ext',
    storage_name: 'First Storage')
```

</details>

### Result

Description: The raw data of the file.

Return type: **file**

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = DownloadFileRequest.new(
    path: '/storage/path/to/file.ext',
    storage_name: 'First Storage')

// Call method:
result = api.cloud_storage.file.download_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="move_file"></a>
## move_file

Description: Move file

Method call example:
```ruby
api.cloud_storage.file.move_file(request)
```

### Parameter: request

Description: move_file method request.

See parameter model documentation at [MoveFileRequest](MoveFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MoveFileRequest.new(
    src_path: '/storage/path/to/source/file.ext',
    dest_path: '/storage/path/to/destination/file.ext',
    src_storage_name: 'First Storage',
    dest_storage_name: 'Other Storage')
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
request = MoveFileRequest.new(
    src_path: '/storage/path/to/source/file.ext',
    dest_path: '/storage/path/to/destination/file.ext',
    src_storage_name: 'First Storage',
    dest_storage_name: 'Other Storage')

// Call method:
api.cloud_storage.file.move_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="upload_file"></a>
## upload_file

Description: Upload file

Returns: Empty error list if the upload is successful.

Method call example:
```ruby
result = api.cloud_storage.file.upload_file(request)
```

### Parameter: request

Description: upload_file method request.

See parameter model documentation at [UploadFileRequest](UploadFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = UploadFileRequest.new(
    path: '/storage/path/to/file.ext',
    file: File.new('/local/file/system/path/to/file.ext'),
    storage_name: 'First Storage')
```

</details>

### Result

Description: Empty error list if the upload is successful.

Return type: [**FilesUploadResult**](FilesUploadResult.md)

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
request = UploadFileRequest.new(
    path: '/storage/path/to/file.ext',
    file: File.new('/local/file/system/path/to/file.ext'),
    storage_name: 'First Storage')

// Call method:
result = api.cloud_storage.file.upload_file(request)

// Result example:
result = 
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

