# AsposeEmailCloud::CalendarDto
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | Document attachments. | [optional] 
**attendees** | [**Array&lt;MailAddress&gt;**](MailAddress.md) | Event attendees. | 
**description** | **String** | Description. | [optional] 
**end_date** | **DateTime** | End date. | 
**end_time_zone** | **String** | End time zone. | [optional] 
**flags** | **Array&lt;String&gt;** | Appointment flags. Items: Enumerates iCalendar flags. Enum, available values: None, AllDayEvent | [optional] 
**is_description_html** | **BOOLEAN** | Indicates if description is in HTML format. | 
**location** | **String** | Location. | 
**method** | **String** | Defines the iCalendar object method type associated with the calendar document. Enum, available values: None, Publish, Request, Reply, Add, Cancel, Refresh, Counter, DeclineCounter | 
**microsoft_busy_status** | **String** | Specifies the BUSY status. Enum, available values: NotDefined, Free, Tentative, Busy, Oof | 
**microsoft_intended_status** | **String** | Specifies the INTENDED status. Enum, available values: NotDefined, Free, Tentative, Busy, Oof | 
**optional_attendees** | [**Array&lt;MailAddress&gt;**](MailAddress.md) | Optional attendees.              | [optional] 
**organizer** | [**MailAddress**](MailAddress.md) | Event organizer.              | 
**recurrence_string** | **String** | Deprecated, use &#39;Recurrence&#39; property. String representation of recurrence pattern (See iCalendar RFC, \&quot;Recurrence rule\&quot; section). For example:               For daily recurrence:         \&quot;FREQ&#x3D;DAILY;COUNT&#x3D;10;WKST&#x3D;MO\&quot;                   For monthly recurrence:         \&quot;BYSETPOS&#x3D;1;BYDAY&#x3D;MO,TU,WE,TH,FR;FREQ&#x3D;MONTHLY;INTERVAL&#x3D;10;WKST&#x3D;MO\&quot;                   For yearly recurrence:         \&quot;BYMONTHDAY&#x3D;30;BYMONTH&#x3D;1;FREQ&#x3D;YEARLY;WKST&#x3D;MO\&quot;                    | [optional] 
**recurrence** | [**RecurrencePatternDto**](RecurrencePatternDto.md) | Recurrence pattern              | [optional] 
**reminders** | [**Array&lt;CalendarReminder&gt;**](CalendarReminder.md) | Reminders. | [optional] 
**sequence_id** | **String** | The sequence id. Read only. | [optional] 
**start_date** | **DateTime** | Start date. | 
**start_time_zone** | **String** | Start time zone. | [optional] 
**status** | **String** | Defines the overall status or confirmation for the calendar document. Enum, available values: NotDefined, Cancelled, Tentative, Confirmed | 
**summary** | **String** | Summary. | [optional] 
**transparency** | **String** | Specifies whether or not this appointment is intended to be visible in availability searches. Enum, available values: NotDefined, Transparent, Opaque | 



[[Back to Model list]](Models.md) [[Back to README]](README.md)


