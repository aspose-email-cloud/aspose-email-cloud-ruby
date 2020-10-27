# AsposeEmailCloud::CalendarAsFileRequest

iCalendar model to file request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** | Calendar file format Enum, available values: Ics, Msg | 
**value** |[**CalendarDto**](CalendarDto.md) | iCalendar model              | 


## Example
```ruby
calendar_as_file_request = CalendarAsFileRequest.new(
  value: CalendarDto.new(
    attendees: [
      MailAddress.new(
        display_name: 'Attendee Name',
        address: 'attendee@aspose.com',
        participation_status: 'Accepted')],
    description: 'Some description',
    end_date: DateTime.now,
    location: 'Some location',
    organizer: MailAddress.new(
      display_name: 'Organizer Name',
      address: 'organizer@aspose.com'),
    recurrence: DailyRecurrencePatternDto.new(
      interval: -1,
      occurs: 10,
      week_start: 'Monday'),
    start_date: DateTime.now,
    summary: 'Some summary'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
