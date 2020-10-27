# AsposeEmailCloud::AiBcrParseStorageRequest

Parse business card images from Storage request             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**out_folder** |[**StorageFolderLocation**](StorageFolderLocation.md) | Parse output folder location on storage              | 
**images** |[**Array&lt;AiBcrImageStorageFile&gt;**](AiBcrImageStorageFile.md) | Images to parse.              | 
**options** |[**AiBcrOptions**](AiBcrOptions.md) | Recognition options.              | [optional] 


## Example
```ruby
ai_bcr_parse_storage_request = AiBcrParseStorageRequest.new(
  out_folder: StorageFolderLocation.new(
    storage: 'First Storage',
    folder_path: 'VCard/files/produced/by/parser/will/be/placed/here'),
  images: [
    AiBcrImageStorageFile.new(
      file: StorageFileLocation.new(
        file_name: 'VCardScanImage.jpg',
        storage: 'First Storage',
        folder_path: 'image/location/on/storage'),
      is_single: true)])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
