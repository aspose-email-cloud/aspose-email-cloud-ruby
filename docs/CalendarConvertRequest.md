# CalendarConvertRequest

Request model for CalendarApi.convert

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** |File format. Enum, available values: Ics, Msg |
**file** |**File** |File to convert |

## Example
```ruby
request = CalendarConvertRequest.new(
    format: 'Ics',
    file: File.new('/path/to/calendar.msg'))
```
