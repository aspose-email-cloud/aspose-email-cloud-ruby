# AsposeEmailCloud::MapiCalendarDto

Represents the mapi calendar object             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**attachments** |[**Array&lt;MapiAttachmentDto&gt;**](MapiAttachmentDto.md) | Message item attachments.              | [optional] 
**billing** |**String** | Billing information associated with an item.              | [optional] 
**body** |**String** | Message text.              | [optional] 
**body_html** |**String** | Gets the BodyRtf of the message converted to HTML, if present, otherwise an empty string.              | [optional] 
**body_rtf** |**String** | RTF formatted message text.              | [optional] 
**body_type** |**String** | The content type of message body. Enum, available values: PlainText, Html, Rtf | 
**categories** |**Array&lt;String&gt;** | Contains keywords or categories for the message object.              | [optional] 
**companies** |**Array&lt;String&gt;** | Contains the names of the companies that are associated with an item.              | [optional] 
**item_id** |**String** | The item id, uses with a server.              | [optional] 
**message_class** |**String** | Case-sensitive string that identifies the sender-defined message class, such as IPM.Note. The message class specifies the type, purpose, or content of the message.              | [optional] 
**mileage** |**String** | Contains the mileage information that is associated with an item.              | [optional] 
**recipients** |[**Array&lt;MapiRecipientDto&gt;**](MapiRecipientDto.md) | Recipients of the message.              | [optional] 
**sensitivity** |**String** | Contains values that indicate the message sensitivity. Enum, available values: None, Personal, Private, CompanyConfidential | 
**subject** |**String** | Subject of the message.              | [optional] 
**subject_prefix** |**String** | Subject prefix that typically indicates some action on a message, such as \"FW: \" for forwarding.              | [optional] 
**properties** |[**Array&lt;MapiPropertyDto&gt;**](MapiPropertyDto.md) | List of MAPI properties              | [optional] 
**discriminator** |**String** |  | 
**appointment_counter_proposal** |**BOOLEAN** | Value indicating whether a Meeting Response object is a counter proposal.              | 
**attendees** |[**MapiCalendarAttendeesDto**](MapiCalendarAttendeesDto.md) | Attendees              | [optional] 
**busy_status** |**String** | Enumerates the mapi calendar possible busy status Enum, available values: Free, Tentative, Busy, OutOfOffice | 
**client_intent** |**Array&lt;String&gt;** | Actions the user has taken on this Meeting object.              Items: Enumerates the actions the user can taken on the Meeting object Enum, available values: Manager, Delegate, DeletedWithNoResponse, DeletedExceptionWithNoResponse, RespondedTentative, RespondedAccept, RespondedDecline, ModifiedStartTime, ModifiedEndTime, ModifiedLocation, RespondedExceptionDecline, Canceled, ExceptionCanceled | [optional] 
**end_date** |**DateTime** | End date and time of the event. If the date is not set, default value for DateTime is returned.              | 
**end_date_time_zone** |[**MapiCalendarTimeZoneDto**](MapiCalendarTimeZoneDto.md) | Time zone information that indicates the time zone of the EndDate property.              | [optional] 
**is_all_day** |**BOOLEAN** | Value indicating whether the event is an all-day event.              | 
**key_words** |**String** | Categories of the calendar object.              | [optional] 
**location** |**String** | Location of the event.              | [optional] 
**recurrence** |[**MapiCalendarEventRecurrenceDto**](MapiCalendarEventRecurrenceDto.md) | Recurrence properties.              | [optional] 
**reminder_delta** |**Integer** | Interval, in minutes, between the time at which the reminder first becomes overdue and the start time of the Calendar object.              | 
**reminder_file_parameter** |**String** | Full path of the sound that a client SHOULD play when the reminder becomes overdue.              | [optional] 
**reminder_set** |**BOOLEAN** | Value indicating whether a reminder is set on the object.              | 
**sequence** |**Integer** | Sequence number.              | 
**start_date** |**DateTime** | Start date and time of the event. If the date is not set, default value for DateTime is returned.              | 
**start_date_time_zone** |[**MapiCalendarTimeZoneDto**](MapiCalendarTimeZoneDto.md) | Time zone information that indicates the time zone of the StartDate property.              | [optional] 
**uid** |**String** | Unique identifier.              | [optional] 
**organizer** |[**MapiElectronicAddressDto**](MapiElectronicAddressDto.md) | Organizer              | [optional] 

Parent class: [MapiMessageItemBaseDto](MapiMessageItemBaseDto.md)


## Example
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


[[Back to Model list]](Models.md) [[Back to README]](README.md)
