# AsposeEmailCloud::Url

Url and its category.             

## Properties
Name | Type | Description | Notes
---- | ---- | ----------- | -----
**category** |[**EnumWithCustomOfUrlCategory**](EnumWithCustomOfUrlCategory.md) | Url category.              | [optional] 
**preferred** |**BOOLEAN** | Defines whether url is preferred.              | 
**href** |**String** | URL.              | [optional] 


## Example
```ruby
url = Url.new(
  category: EnumWithCustom<UrlCategory>.new(
    value: 'Work'),
  preferred: true,
  href: 'https://products.aspose.cloud/email')
```


[[Back to Model list]](Models.md) [[Back to README]](README.md)
