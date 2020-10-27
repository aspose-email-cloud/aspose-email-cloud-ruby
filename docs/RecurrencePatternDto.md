# AsposeEmailCloud::RecurrencePatternDto

iCalendar recurrence pattern.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**interval** |**Integer** | Number of recurrence units.              | 
**occurs** |**Integer** | Number of occurrences of the recurrence pattern.              | 
**end_date** |**DateTime** | End date.              | 
**week_start** |**String** | Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay | 
**discriminator** |**String** |  | 


## Example
```ruby
recurrence_pattern_dto = RecurrencePatternDto.new(
  interval: -1,
  week_start: 'Monday')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
