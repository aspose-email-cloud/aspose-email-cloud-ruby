# AsposeEmailCloud::MapiCalendarSaveRequest

Save MapiCalendar to storage request.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**storage_file** |[**StorageFileLocation**](StorageFileLocation.md) |  | 
**value** |[**MapiCalendarDto**](MapiCalendarDto.md) |  | 
**format** |**String** | Calendar file format Enum, available values: Ics, Msg | 

Parent class: [StorageModelOfMapiCalendarDto](StorageModelOfMapiCalendarDto.md)


## Example
```ruby
mapi_calendar_save_request = MapiCalendarSaveRequest.new(
  format: 'Msg',
  storage_file: StorageFileLocation.new(
    file_name: 'calendar.msg',
    storage: 'First Storage',
    folder_path: 'file/location/folder/on/storage'),
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
