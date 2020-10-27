# AsposeEmailCloud::FileVersions

File versions FileVersion.

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;FileVersion&gt;**](FileVersion.md) | File versions FileVersion. | [optional] 


## Example
```ruby
file_versions = FileVersions.new(
  value: [
    FileVersion.new(
      version_id: 'd5afd857-8797-4ca0-b806-a03fdfc3831f',
      is_latest: true,
      name: 'file.ext',
      modified_date: DateTime.now,
      size: 4096,
      path: '/storage/path/to')])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
