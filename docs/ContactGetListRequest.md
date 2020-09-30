# ContactGetListRequest

Request model for ContactApi.get_list

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** |Contact document format. Enum, available values: VCard, WebDav, Msg |
**folder** |**String** |Path to folder in storage. |[optional] 
**storage** |**String** |Storage name. |[optional] 
**items_per_page** |**Integer** |Count of items on page. |[optional] [default to 10]
**page_number** |**Integer** |Page number. |[optional] [default to 0]

## Example
```ruby
request = ContactGetListRequest.new(
    format: 'VCard',
    folder: 'folder/on/storage',
    storage: 'First Storage',
    items_per_page: 10,
    page_number: 0)
```
