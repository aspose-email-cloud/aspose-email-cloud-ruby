# AsposeEmailCloud::MapiCalendarTimeZoneInfoDto

Represents the mapi calendar time zone rule.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**bias** |**Integer** | Time zone's offset in minutes from UTC.              | 
**daylight_bias** |**Integer** | Offset in minutes from lBias during daylight saving time.              | 
**daylight_date** |[**MapiCalendarTimeZoneRuleDto**](MapiCalendarTimeZoneRuleDto.md) | Date and local time that indicate when to begin using the DaylightBias.              | [optional] 
**standard_bias** |**Integer** | Offset in minutes from lBias during standard time.              | 
**standard_date** |[**MapiCalendarTimeZoneRuleDto**](MapiCalendarTimeZoneRuleDto.md) | Date and local time that indicate when to begin using the StandardBias.              | [optional] 
**time_zone_flags** |**Array&lt;String&gt;** | Individual bit flags that specify information about this TimeZoneRule.              Items: Enumerates the individual bit flags that specify information about TimeZoneRule Enum, available values: TzRuleFlagRecurCurrentTzReg, TzRuleFlagEffectiveTzReg | [optional] 
**year** |**Integer** | Year in which this rule is scheduled to take effect.              | 


[[Back to Model list]](Models.md) [[Back to README]](README.md)
