# AsposeEmailCloud::WeeklyRecurrencePatternDto

Weekly recurrence pattern.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**interval** |**Integer** | Number of recurrence units.              | 
**occurs** |**Integer** | Number of occurrences of the recurrence pattern.              | 
**end_date** |**DateTime** | End date.              | 
**week_start** |**String** | Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay | 
**discriminator** |**String** |  | 
**start_days** |**Array&lt;String&gt;** | Start days              Items: Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay | [optional] 

Parent class: [RecurrencePatternDto](RecurrencePatternDto.md)


## Example
```ruby
weekly_recurrence_pattern_dto = WeeklyRecurrencePatternDto.new(
  start_days: [
    'Tuesday',
    'Thursday'],
  interval: -1,
  occurs: 10,
  week_start: 'Sunday')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
