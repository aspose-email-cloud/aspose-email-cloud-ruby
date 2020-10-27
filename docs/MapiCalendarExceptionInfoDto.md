# AsposeEmailCloud::MapiCalendarExceptionInfoDto

An exception specifies changes to an instance of a recurring series.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**attachments** |[**Array&lt;MapiAttachmentDto&gt;**](MapiAttachmentDto.md) | Attachments in the recurrence exception.              | [optional] 
**body** |**String** | Body.              | [optional] 
**busy_status** |**String** | Enumerates the mapi calendar possible busy status Enum, available values: Free, Tentative, Busy, OutOfOffice | 
**end_date_time** |**DateTime** | End date.              | 
**has_attachment** |**BOOLEAN** | Value of this field specifies whether the Exception Embedded Message object contains attachments.              | 
**location** |**String** | Location.              | [optional] 
**meeting_type** |**String** | Enumerates the appointment state Enum, available values: Meeting, Received, Canceled | 
**original_start_date** |**DateTime** | Original start date.              | 
**override_flags** |**Array&lt;String&gt;** | Override flags.              Items: Specifies what data in the MapiCalendarOverride structure has a value different from the recurring series. Enum, available values: Subject, MeetingType, ReminderDelta, Reminder, Location, BusyStatus, Attachment, Subtype, AppointmentColor, ExceptionalBody | [optional] 
**reminder_delta** |**Integer** | Reminder delta.              | 
**reminder_set** |**BOOLEAN** | Value for the PidLidReminderSet property.              | 
**start_date_time** |**DateTime** | Start date.              | 
**subject** |**String** | Subject.              | [optional] 
**sub_type** |**Integer** | SubType.              | 


[[Back to Model list]](Models.md) [[Back to README]](README.md)
