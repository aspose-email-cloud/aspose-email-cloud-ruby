# AsposeEmailCloud::AiBcrImageStorageFile

Image from storage for recognition             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**is_single** |**BOOLEAN** | Determines that image contains single VCard or more.              | 
**file** |[**StorageFileLocation**](StorageFileLocation.md) | Image location              | 

Parent class: [AiBcrImage](AiBcrImage.md)


## Example
```ruby
ai_bcr_image_storage_file = AiBcrImageStorageFile.new(
  file: StorageFileLocation.new(
    file_name: 'VCardScanImage.jpg',
    storage: 'First Storage',
    folder_path: 'image/location/on/storage'),
  is_single: true)
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
