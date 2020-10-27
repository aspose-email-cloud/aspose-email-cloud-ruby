# AsposeEmailCloud::StorageFileLocation

A storage file location information             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**storage** |**String** | A storage name              | [optional] 
**folder_path** |**String** | A path to a folder in specified storage              | [optional] 
**file_name** |**String** | A file name in storage              | 

Parent class: [StorageFolderLocation](StorageFolderLocation.md)


## Example
```ruby
storage_file_location = StorageFileLocation.new(
  file_name: 'fileOnStorage.txt',
  storage: 'First Storage',
  folder_path: 'file/location/folder/on/storage')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
