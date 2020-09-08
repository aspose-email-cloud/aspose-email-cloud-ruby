# AsposeEmailCloud::MapiCalendarWeeklyRecurrencePatternDto
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**calendar_type** | **String** | Enumerated the calendar type of the mapi recurrence Enum, available values: Default, CalGregorian, CalGregorianUs, CalJapan, CalTaiwan, CalKorea, CalHijri, CalThai, CalHebrew, CalGregorianMeFrench, CalGregorianArabic, CalGregorianXLitEnglish, CalGregorianXLitFrench, CalLunarJapanese, CalChineseLunar, CalSaka, CalLunarEtoChn, CalLunarEtoKor, CalLunarRokuyou, CalLunarKorean, CalUmAlQura | 
**deleted_instance_dates** | **Array&lt;DateTime&gt;** | An array of dates, each of which is the original instance date of either a deleted instance or a modified instance for this recurrence.              | [optional] 
**end_date** | **DateTime** | End date of an item recurrence pattern.              | 
**end_type** | **String** | Enumerates the ending type for the recurrence. Enum, available values: None, EndAfterDate, EndAfterNOccurrences, NeverEnd | 
**exceptions** | [**Array&lt;MapiCalendarExceptionInfoDto&gt;**](MapiCalendarExceptionInfoDto.md) | An exception specifies changes to an instance of a recurring series.              | [optional] 
**frequency** | **String** | Enumerates mapi calendar recurrence frequency Enum, available values: None, Daily, Weekly, Monthly, Yearly | 
**modified_instance_dates** | **Array&lt;DateTime&gt;** | An array of dates, each of which is the date of a modified instance.              | [optional] 
**occurrence_count** | **Integer** | Number of occurrences in a recurrence.              | 
**pattern_type** | **String** | Enumerates the mapi calendar recurrence pattern types Enum, available values: Day, Week, Month, MonthEnd, MonthNth, HjMonth, HjMonthNth, HjMonthEnd | 
**period** | **Integer** | Interval at which the meeting pattern repeats.              | 
**sliding_flag** | **BOOLEAN** | Defines whether pattern is sliding or not.              | 
**start_date** | **DateTime** | Start date of an item recurrence pattern.              | 
**week_start_day** | **String** | Day of week. Enum, available values: Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday | 
**discriminator** | **String** |  | 
**day_of_week** | **Array&lt;String&gt;** | Days of week at which the event occurs.              Items: Enumerates the days of week of the mapi calendar recurrence pattern Enum, available values: Saturday, Friday, Thursday, Wednesday, Tuesday, Monday, Sunday | [optional] 

 Parent class: [MapiCalendarRecurrencePatternDto](MapiCalendarRecurrencePatternDto.md)

[[Back to Model list]](Models.md) [[Back to README]](README.md)


