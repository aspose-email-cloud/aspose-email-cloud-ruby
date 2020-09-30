# MapiCalendarApi (EmailCloud.mapi.calendar)

MAPI calendar operations.

<a name="as_calendar_dto"></a>
## as_calendar_dto

Description: Converts MAPI calendar model to CalendarDto model.             

Returns: CalendarDto model.

Method call example:
```ruby
result = api.mapi.calendar.as_calendar_dto(mapi_calendar_dto)
```

### Parameter: mapi_calendar_dto

Description: MAPI calendar model to convert.

See parameter model documentation at [MapiCalendarDto](MapiCalendarDto.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
mapi_calendar_dto = MapiCalendarDto.new(
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
  subject: 'Some summary')
```

</details>

### Result

Description: CalendarDto model.

Return type: [**CalendarDto**](CalendarDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = CalendarDto.new(
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
  summary: 'Some summary')
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
mapi_calendar_dto = MapiCalendarDto.new(
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
  subject: 'Some summary')

// Call method:
result = api.mapi.calendar.as_calendar_dto(mapi_calendar_dto)

// Result example:
result = CalendarDto.new(
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
  summary: 'Some summary')
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="as_file"></a>
## as_file

Description: Converts MAPI calendar model to specified format and returns as file.             

Returns: File stream in specified format.

Method call example:
```ruby
result = api.mapi.calendar.as_file(request)
```

### Parameter: request

Description: MAPI calendar model to convert.

See parameter model documentation at [MapiCalendarAsFileRequest](MapiCalendarAsFileRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiCalendarAsFileRequest.new(
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

</details>

### Result

Description: File stream in specified format.

Return type: **file**

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = MapiCalendarAsFileRequest.new(
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

// Call method:
result = api.mapi.calendar.as_file(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="from_file"></a>
## from_file

Description: Converts calendar file to a MAPI model representation.             

Returns: MAPI model.

Method call example:
```ruby
result = api.mapi.calendar.from_file(request)
```

### Parameter: request

Description: from_file method request.

See parameter model documentation at [MapiCalendarFromFileRequest](MapiCalendarFromFileRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiCalendarFromFileRequest.new(
    file: File.new('/path/to/calendar.msg'))
```

</details>

### Result

Description: MAPI model.

Return type: [**MapiCalendarDto**](MapiCalendarDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = MapiCalendarDto.new(
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
  subject: 'Some summary')
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = MapiCalendarFromFileRequest.new(
    file: File.new('/path/to/calendar.msg'))

// Call method:
result = api.mapi.calendar.from_file(request)

// Result example:
result = MapiCalendarDto.new(
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
  subject: 'Some summary')
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="get"></a>
## get

Description: Get MAPI calendar document.             

Returns: MAPI Calendar model.

Method call example:
```ruby
result = api.mapi.calendar.get(request)
```

### Parameter: request

Description: get method request.

See parameter model documentation at [MapiCalendarGetRequest](MapiCalendarGetRequest.md).

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiCalendarGetRequest.new(
    file_name: 'calendar.msg',
    folder: 'calendar/location/on/storage',
    storage: 'First Storage')
```

</details>

### Result

Description: MAPI Calendar model.

Return type: [**MapiCalendarDto**](MapiCalendarDto.md)

<details>
    <summary>Result example</summary>

```ruby
result = MapiCalendarDto.new(
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
  subject: 'Some summary')
```
</details>

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = MapiCalendarGetRequest.new(
    file_name: 'calendar.msg',
    folder: 'calendar/location/on/storage',
    storage: 'First Storage')

// Call method:
result = api.mapi.calendar.get(request)

// Result example:
result = MapiCalendarDto.new(
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
  subject: 'Some summary')
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
<a name="save"></a>
## save

Description: Save MAPI Calendar to storage.             

Method call example:
```ruby
api.mapi.calendar.save(request)
```

### Parameter: request

Description: Calendar create/update request.

See parameter model documentation at [MapiCalendarSaveRequest](MapiCalendarSaveRequest.md)

<details>
    <summary>Parameter initialization example:</summary>
    
```ruby
request = MapiCalendarSaveRequest.new(
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

</details>

### Result

Return type: nil (empty response body)

### Complete example

<details>
    <summary>Method call example:</summary>

```ruby
api = EmailCloud(app_key, app_sid)

// Prepare parameters:
request = MapiCalendarSaveRequest.new(
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

// Call method:
api.mapi.calendar.save(request)
```

</details>

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

