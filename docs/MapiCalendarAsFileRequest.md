# AsposeEmailCloud::MapiCalendarAsFileRequest

Convert MapiCalendar to file request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** | Calendar file format Enum, available values: Ics, Msg | 
**value** |[**MapiCalendarDto**](MapiCalendarDto.md) | MAPI calendar model.              | 


## Example
```ruby
mapi_calendar_as_file_request = MapiCalendarAsFileRequest.new(
  format: 'Msg',
  value: MapiCalendarDto.new(
    attendees: MapiCalendarAttendeesDto.new(
      appointment_recipients: [
        MapiRecipientDto.new(
          email_address: 'organizer@aspose.com',
          address_type: 'SMTP',
          display_name: 'Organizer Name',
          recipient_type: 'MapiTo'),
        MapiRecipientDto.new(
          email_address: 'attendee@aspose.com',
          address_type: 'SMTP',
          display_name: 'Attendee Name',
          recipient_type: 'MapiTo')]),
    busy_status: 'Tentative',
    client_intent: [
      'Manager'],
    end_date: DateTime.now,
    location: 'Some location',
    recurrence: MapiCalendarEventRecurrenceDto.new(
      recurrence_pattern: MapiCalendarDailyRecurrencePatternDto.new(
        frequency: 'Daily',
        occurrence_count: 10,
        week_start_day: 'Monday')),
    start_date: DateTime.now,
    organizer: MapiElectronicAddressDto.new(
      email_address: 'organizer@aspose.com'),
    body: 'Some description',
    subject: 'Some summary'))
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
