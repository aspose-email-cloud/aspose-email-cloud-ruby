# AsposeEmailCloud::StorageFileLocationList

List of files located on storage.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;StorageFileLocation&gt;**](StorageFileLocation.md) |  | [optional] 

Parent class: [ListResponseOfStorageFileLocation](ListResponseOfStorageFileLocation.md)


## Example
```ruby
storage_file_location_list = StorageFileLocationList.new(
  value: [
    StorageFileLocation.new(
      file_name: 'fileOnStorage.txt',
      storage: 'First Storage',
      folder_path: 'file/location/folder/on/storage')])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
