# MapiCalendarGetRequest

Request model for MapiCalendarApi.get

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file_name** |**String** |Calendar file name in storage. |
**folder** |**String** |Path to folder in storage. |[optional] 
**storage** |**String** |Storage name. |[optional] 

## Example
```ruby
request = MapiCalendarGetRequest.new(
    file_name: 'calendar.msg',
    folder: 'calendar/location/on/storage',
    storage: 'First Storage')
```
