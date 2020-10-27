# AsposeEmailCloud::CalendarDto

iCalendar document representation.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**attachments** |[**Array&lt;Attachment&gt;**](Attachment.md) | Document attachments. | [optional] 
**attendees** |[**Array&lt;MailAddress&gt;**](MailAddress.md) | Event attendees. | 
**description** |**String** | Description. | [optional] 
**end_date** |**DateTime** | End date. | 
**end_time_zone** |**String** | End time zone. | [optional] 
**flags** |**Array&lt;String&gt;** | Appointment flags. Items: Enumerates iCalendar flags. Enum, available values: None, AllDayEvent | [optional] 
**is_description_html** |**BOOLEAN** | Indicates if description is in HTML format. | 
**location** |**String** | Location. | 
**method** |**String** | Defines the iCalendar object method type associated with the calendar document. Enum, available values: None, Publish, Request, Reply, Add, Cancel, Refresh, Counter, DeclineCounter | 
**microsoft_busy_status** |**String** | Specifies the BUSY status. Enum, available values: NotDefined, Free, Tentative, Busy, Oof | 
**microsoft_intended_status** |**String** | Specifies the INTENDED status. Enum, available values: NotDefined, Free, Tentative, Busy, Oof | 
**optional_attendees** |[**Array&lt;MailAddress&gt;**](MailAddress.md) | Optional attendees.              | [optional] 
**organizer** |[**MailAddress**](MailAddress.md) | Event organizer.              | 
**recurrence_string** |**String** | Deprecated, use 'Recurrence' property. String representation of recurrence pattern (See iCalendar RFC, \"Recurrence rule\" section). For example:               For daily recurrence:         \"FREQ=DAILY;COUNT=10;WKST=MO\"                   For monthly recurrence:         \"BYSETPOS=1;BYDAY=MO,TU,WE,TH,FR;FREQ=MONTHLY;INTERVAL=10;WKST=MO\"                   For yearly recurrence:         \"BYMONTHDAY=30;BYMONTH=1;FREQ=YEARLY;WKST=MO\"                    | [optional] 
**recurrence** |[**RecurrencePatternDto**](RecurrencePatternDto.md) | Recurrence pattern              | [optional] 
**reminders** |[**Array&lt;CalendarReminder&gt;**](CalendarReminder.md) | Reminders. | [optional] 
**sequence_id** |**String** | The sequence id. Read only. | [optional] 
**start_date** |**DateTime** | Start date. | 
**start_time_zone** |**String** | Start time zone. | [optional] 
**status** |**String** | Defines the overall status or confirmation for the calendar document. Enum, available values: NotDefined, Cancelled, Tentative, Confirmed | 
**summary** |**String** | Summary. | [optional] 
**transparency** |**String** | Specifies whether or not this appointment is intended to be visible in availability searches. Enum, available values: NotDefined, Transparent, Opaque | 


## Example
```ruby
calendar_dto = CalendarDto.new(
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
