# CalendarGetRequest

Request model for CalendarApi.get

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file_name** |**String** |iCalendar file name in storage. |
**folder** |**String** |Path to folder in storage. |[optional] 
**storage** |**String** |Storage name. |[optional] 

## Example
```ruby
request = CalendarGetRequest.new(
    file_name: 'calendar.ics',
    folder: 'calendar/location/on/storage',
    storage: 'First Storage')
```
