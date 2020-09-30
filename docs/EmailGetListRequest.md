# EmailGetListRequest

Request model for EmailApi.get_list

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**format** |**String** |Email document format. Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html, Tnef, Oft |
**folder** |**String** |Path to folder in storage. |[optional] 
**storage** |**String** |Storage name. |[optional] 
**items_per_page** |**Integer** |Count of items on page. |[optional] [default to 10]
**page_number** |**Integer** |Page number. |[optional] [default to 0]

## Example
```ruby
request = EmailGetListRequest.new(
    format: 'Eml',
    folder: 'folder/on/storage',
    storage: 'First Storage',
    items_per_page: 10,
    page_number: 0)
```
