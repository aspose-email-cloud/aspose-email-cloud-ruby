# AsposeEmailCloud::StorageFile

File or folder information

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**name** |**String** | File or folder name. | [optional] 
**is_folder** |**BOOLEAN** | True if it is a folder. | 
**modified_date** |**DateTime** | File or folder last modified DateTime. | [optional] 
**size** |**Integer** | File or folder size. | 
**path** |**String** | File or folder path. | [optional] 


## Example
```ruby
storage_file = StorageFile.new(
  name: 'file.ext',
  modified_date: DateTime.now,
  size: 4096,
  path: '/storage/path/to')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
