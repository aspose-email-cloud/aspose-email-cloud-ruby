# StorageApi (EmailCloud.cloud_storage.storage)

Storage operations controller

<a name="get_disc_usage"></a>
## get_disc_usage

Description: Get disc usage

Returns: Disc usage.

Method call example:
```ruby
result = api.cloud_storage.storage.get_disc_usage(request)
```

### Parameter: request

Description: get_disc_usage method request.

See parameter model documentation at [GetDiscUsageRequest](GetDiscUsageRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = GetDiscUsageRequest.new(
    storage_name: 'First Storage')
```

</details>

### Result

Description: Disc usage.

Return type: [**DiscUsage**](DiscUsage.md)

<details>
    <summary>Result example</summary>

```ruby
result = DiscUsage.new(
  used_size: 1048576,
  total_size: 3145728)
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = GetDiscUsageRequest.new(
    storage_name: 'First Storage')

// Call method:
result = api.cloud_storage.storage.get_disc_usage(request)

// Result example:
result = DiscUsage.new(
  used_size: 1048576,
  total_size: 3145728)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get_file_versions"></a>
## get_file_versions

Description: Get file versions

Returns: File versions.

Method call example:
```ruby
result = api.cloud_storage.storage.get_file_versions(request)
```

### Parameter: request

Description: get_file_versions method request.

See parameter model documentation at [GetFileVersionsRequest](GetFileVersionsRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = GetFileVersionsRequest.new(
    path: '/storage/path/to/file.ext',
    storage_name: 'First Storage')
```

</details>

### Result

Description: File versions.

Return type: [**FileVersions**](FileVersions.md)

<details>
    <summary>Result example</summary>

```ruby
result = FileVersions.new(
  value: [
    FileVersion.new(
      version_id: 'd5afd857-8797-4ca0-b806-a03fdfc3831f',
      is_latest: true,
      name: 'file.ext',
      modified_date: DateTime.now,
      size: 4096,
      path: '/storage/path/to')])
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = GetFileVersionsRequest.new(
    path: '/storage/path/to/file.ext',
    storage_name: 'First Storage')

// Call method:
result = api.cloud_storage.storage.get_file_versions(request)

// Result example:
result = FileVersions.new(
  value: [
    FileVersion.new(
      version_id: 'd5afd857-8797-4ca0-b806-a03fdfc3831f',
      is_latest: true,
      name: 'file.ext',
      modified_date: DateTime.now,
      size: 4096,
      path: '/storage/path/to')])
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="object_exists"></a>
## object_exists

Description: Check if file or folder exists

Returns: Object exist result.

Method call example:
```ruby
result = api.cloud_storage.storage.object_exists(request)
```

### Parameter: request

Description: object_exists method request.

See parameter model documentation at [ObjectExistsRequest](ObjectExistsRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = ObjectExistsRequest.new(
    path: '/storage/path/to/folder/or/file.ext',
    storage_name: 'First Storage')
```

</details>

### Result

Description: Object exist result.

Return type: [**ObjectExist**](ObjectExist.md)

<details>
    <summary>Result example</summary>

```ruby
result = ObjectExist.new(
  exists: true)
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = ObjectExistsRequest.new(
    path: '/storage/path/to/folder/or/file.ext',
    storage_name: 'First Storage')

// Call method:
result = api.cloud_storage.storage.object_exists(request)

// Result example:
result = ObjectExist.new(
  exists: true)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="exists"></a>
## exists

Description: Check if storage exists

Returns: Storage exist result.

Method call example:
```ruby
result = api.cloud_storage.storage.exists(request)
```

### Parameter: request

Description: exists method request.

See parameter model documentation at [StorageExistsRequest](StorageExistsRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = StorageExistsRequest.new(
    storage_name: 'First Storage')
```

</details>

### Result

Description: Storage exist result.

Return type: [**StorageExist**](StorageExist.md)

<details>
    <summary>Result example</summary>

```ruby
result = StorageExist.new(
  exists: true)
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = StorageExistsRequest.new(
    storage_name: 'First Storage')

// Call method:
result = api.cloud_storage.storage.exists(request)

// Result example:
result = StorageExist.new(
  exists: true)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

