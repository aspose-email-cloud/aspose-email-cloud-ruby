# CalendarGetListRequest

Request model for CalendarApi.get_list

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**folder** |**String** |Path to folder in storage. |
**items_per_page** |**Integer** |Count of items on page. |[optional] [default to 10]
**page_number** |**Integer** |Page number. |[optional] [default to 0]
**storage** |**String** |Storage name. |[optional] 

## Example
```ruby
request = CalendarGetListRequest.new(
    folder: 'some/folder/on/storage',
    items_per_page: 10,
    page_number: 0,
    storage: 'First Storage')
```
