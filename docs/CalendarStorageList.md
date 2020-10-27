# AsposeEmailCloud::CalendarStorageList

iCalendar models list with corresponding storage locations.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**value** |[**Array&lt;StorageModelOfCalendarDto&gt;**](StorageModelOfCalendarDto.md) |  | [optional] 

Parent class: [ListResponseOfStorageModelOfCalendarDto](ListResponseOfStorageModelOfCalendarDto.md)


## Example
```ruby
calendar_storage_list = CalendarStorageList.new(
  value: [
    StorageModelOfCalendarDto.new(
      storage_file: StorageFileLocation.new(
        file_name: 'calendar.ics',
        storage: 'First Storage',
        folder_path: 'file/location/folder/on/storage'),
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
        summary: 'Some summary'))])
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
