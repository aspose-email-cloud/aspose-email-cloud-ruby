# AsposeEmailCloud::CalendarAsAlternateRequest

Convert iCalendar to AlternateView request             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**CalendarDto**](CalendarDto.md) | iCalendar document model              | 
**action** |**String** | iCalendar actions. Enum, available values: Create, Update, Cancel | 
**sequence_id** |**String** | iCalendar sequence id              | [optional] 


## Example
```ruby
calendar_as_alternate_request = CalendarAsAlternateRequest.new(
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
    summary: 'Some summary'),
  sequence_id: 'cf4ffb6c-895d-4e58-bdb4-0a3918e96a43')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
