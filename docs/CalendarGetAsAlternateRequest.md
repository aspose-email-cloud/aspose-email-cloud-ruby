# CalendarGetAsAlternateRequest

Request model for CalendarApi.get_as_alternate

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**file_name** |**String** |iCalendar file name in storage |
**calendar_action** |**String** |iCalendar method type Enum, available values: Create, Update, Cancel |
**sequence_id** |**String** |The sequence id |[optional] 
**folder** |**String** |Path to folder in storage |[optional] 
**storage** |**String** |Storage name |[optional] 

## Example
```ruby
request = CalendarGetAsAlternateRequest.new(
    file_name: 'calendar.ics',
    calendar_action: 'Create',
    folder: 'calendar/location/on/storage',
    storage: 'First Storage')
```
