# AsposeEmailCloud::TaskRegeneratingPatternDto

Represents the regenerating recurrence pattern that specifies how many days, weeks, months or years after the completion of the current task the next occurrence will be due.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**interval** |**Integer** | Number of recurrence units.              | 
**occurs** |**Integer** | Number of occurrences of the recurrence pattern.              | 
**end_date** |**DateTime** | End date.              | 
**week_start** |**String** | Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay | 
**discriminator** |**String** |  | 
**regenerating_type** |**String** | Enumerates the types of regenerating pattern. Enum, available values: Daily, Weekly, Monthly, Yearly | 

Parent class: [RecurrencePatternDto](RecurrencePatternDto.md)


## Example
```ruby
task_regenerating_pattern_dto = TaskRegeneratingPatternDto.new(
  interval: 1,
  occurs: 2,
  end_date: DateTime.now,
  week_start: 'Sunday')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
