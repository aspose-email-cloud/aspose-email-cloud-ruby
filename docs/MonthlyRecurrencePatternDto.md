# AsposeEmailCloud::MonthlyRecurrencePatternDto

Monthly recurrence pattern.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**interval** |**Integer** | Number of recurrence units.              | 
**occurs** |**Integer** | Number of occurrences of the recurrence pattern.              | 
**end_date** |**DateTime** | End date.              | 
**week_start** |**String** | Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay | 
**discriminator** |**String** |  | 
**start_day** |**String** | Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay | 
**start_offset** |**Integer** | Start offset.              | 
**start_position** |**String** | Day positions, typically found in a month. Enum, available values: None, First, Second, Third, Fourth, Last | 

Parent class: [RecurrencePatternDto](RecurrencePatternDto.md)


## Example
```ruby
monthly_recurrence_pattern_dto = MonthlyRecurrencePatternDto.new(
  start_day: 'Monday',
  start_position: 'First',
  interval: -1,
  week_start: 'Monday')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
