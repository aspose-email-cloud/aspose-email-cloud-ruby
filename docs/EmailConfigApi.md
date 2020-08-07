# EmailConfigApi

<a name="email_config_discover"></a>
# **email_config_discover**
> email_config_discover(request)

Discover email accounts by email address. Does not validate discovered accounts.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailConfigDiscoverRequestData.new(address, fast_processing=fast_processing)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| Email address. | 
 **fast_processing** | **BOOLEAN**| Turns on fast processing. All discover systems will run in parallel. First discovered result will be returned.              | [optional] [default to false]

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_config_discover_oauth"></a>
# **email_config_discover_oauth**
> email_config_discover_oauth(request)

Discover email accounts by email address. Validates discovered accounts using OAuth 2.0.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailConfigDiscoverOauthRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**EmailConfigDiscoverOauthRequest**](EmailConfigDiscoverOauthRequest.md)| Discover email configuration request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

<a name="email_config_discover_password"></a>
# **email_config_discover_password**
> email_config_discover_password(request)

Discover email accounts by email address. Validates discovered accounts using login and password.             

### Return type

[**EmailAccountConfigList**](EmailAccountConfigList.md)

### Request Parameters
```ruby
request = AsposeEmailCloud::EmailConfigDiscoverPasswordRequestData.new(request)
```

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**EmailConfigDiscoverPasswordRequest**](EmailConfigDiscoverPasswordRequest.md)| Discover email configuration request. | 

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

