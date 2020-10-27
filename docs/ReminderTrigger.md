# AsposeEmailCloud::ReminderTrigger

Specifies when an alarm will trigger.

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**date_time** |**DateTime** | A trigger set to an absolute date/time. | 
**duration** |**Integer** | Specifies a relative time in ticks for the trigger of the alarm.              | [optional] 
**related** |**String** | Specify the relationship of the alarm trigger with respect to the start or end of the event. Enum, available values: Start, End | 


## Example
```ruby
reminder_trigger = ReminderTrigger.new(
  date_time: DateTime.now,
  duration: 600000000)
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
