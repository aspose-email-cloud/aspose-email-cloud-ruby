# CalendarGetAsFileRequest

Request model for CalendarApi.get_as_file

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file_name** |**String** |Calendar document file name. |
**format** |**String** |File format. Enum, available values: Ics, Msg |
**storage** |**String** |Storage name. |[optional] 
**folder** |**String** |Path to folder in storage. |[optional] 

## Example
```ruby
request = CalendarGetAsFileRequest.new(
    file_name: 'calendar.msg',
    format: 'Ics',
    storage: 'First Storage',
    folder: 'calendar/file/location/on/storage')
```
