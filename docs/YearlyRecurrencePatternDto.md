# models.YearlyRecurrencePatternDto
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**interval** | **Integer** | Number of recurrence units.              | 
**occurs** | **Integer** | Number of occurrences of the recurrence pattern.              | 
**end_date** | **DateTime** | End date.              | 
**week_start** | **String** | Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay | 
**discriminator** | **String** |  | 
**start_day** | **String** | Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay | 
**start_month** | **String** | Represents a calendar month. Enum, available values: None, January, February, March, April, May, June, July, August, September, October, November, December | 
**start_offset** | **Integer** | Start offset.              | 
**start_position** | **String** | Day positions, typically found in a month. Enum, available values: None, First, Second, Third, Fourth, Last | 

 Parent class: [RecurrencePatternDto](RecurrencePatternDto.md)

[[Back to Model list]](README.md#documentation-for-models) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to README]](README.md)


