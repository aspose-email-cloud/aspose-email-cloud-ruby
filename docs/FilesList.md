# AsposeEmailCloud::FilesList

Files list

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;StorageFile&gt;**](StorageFile.md) | Files and folders contained by folder StorageFile. | [optional] 


## Example
```ruby
files_list = FilesList.new(
  value: [
    StorageFile.new(
      name: 'file.ext',
      modified_date: DateTime.now,
      size: 1024,
      path: '/path/to/file/on/storage')])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
