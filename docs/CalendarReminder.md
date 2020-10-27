# AsposeEmailCloud::CalendarReminder

Provides a grouping of component properties that define an alarm.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**action** |**String** | Defines the action to be invoked when an alarm is triggered. Enum, available values: Audio, Display, Email, Procedure, None | 
**attachments** |**Array&lt;String&gt;** | Collection of Reminder Attachments. Could be an absolute URI or Base64 string representation of attachment content              | [optional] 
**attendees** |[**Array&lt;ReminderAttendee&gt;**](ReminderAttendee.md) | Contains collection of ReminderAttendee objects.              | [optional] 
**description** |**String** | Provides a more complete description of the alarm. | [optional] 
**duration** |**Integer** | Specifies the delay period in ticks, after which the alarm will repeat.              | [optional] 
**repeat** |**Integer** | Defines the number of time the alarm should be repeated, after the initial trigger.              | 
**summary** |**String** | Defines a short summary or subject for the alarm. | [optional] 
**trigger** |[**ReminderTrigger**](ReminderTrigger.md) | Specifies when an alarm will trigger. | [optional] 


[[Back to Model list]](Models.md) [[Back to README]](README.md)
