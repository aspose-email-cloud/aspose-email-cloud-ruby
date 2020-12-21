# EmailConfigDiscoverRequest

Request model for EmailConfigApi.discover

## Properties

Name | Type | Description | Notes
---- | ---- | ----------- | -----
**address** |**String** |Email address. |
**fast_processing** |**BOOLEAN** |Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned.              |[optional] [default to false]

## Example
```ruby
request = EmailConfigDiscoverRequest.new(
    address: 'address@gmail.com')
```
