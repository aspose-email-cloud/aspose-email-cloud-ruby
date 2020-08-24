# EmailConfigApi

            
<a name="discover"></a>
# discover

```ruby
discover(request)
```

Discover email accounts by email address. Does not validate discovered accounts.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### request Parameter
```ruby
AsposeEmailCloud::EmailConfigDiscoverRequest.new(
    address,
    fast_processing)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String** | Email address. | 
 **fast_processing** | **BOOLEAN** | Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned.              | [optional] [default to false]

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="discover_oauth"></a>
# discover_oauth

```ruby
discover_oauth(request)
```

Discover email accounts by email address. Validates discovered accounts using OAuth 2.0.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### request Parameter

See parameter model documentation at [EmailConfigDiscoverOauthRequest](EmailConfigDiscoverOauthRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)
            
<a name="discover_password"></a>
# discover_password

```ruby
discover_password(request)
```

Discover email accounts by email address. Validates discovered accounts using login and password.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### request Parameter

See parameter model documentation at [EmailConfigDiscoverPasswordRequest](EmailConfigDiscoverPasswordRequest.md)

[[Back to top]](#) [[Back to Model list]](Models.md) [[Back to README]](README.md)

