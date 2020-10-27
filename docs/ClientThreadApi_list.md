
## Documentation for ClientThreadApi operations

All URIs are relative to *https://api.aspose.cloud/v4.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](ClientThreadApi.md#delete)| **DELETE** /email/client/thread| Delete thread by id. All messages from thread will also be deleted.             
[**get_list**](ClientThreadApi.md#get_list)| **GET** /email/client/thread/list| Get message threads from folder. All messages are partly fetched (without email body and some other fields).             
[**get_messages**](ClientThreadApi.md#get_messages)| **GET** /email/client/thread/messages| Get messages from thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             
[**move**](ClientThreadApi.md#move)| **PUT** /email/client/thread/move| Move thread to another folder.             
[**set_is_read**](ClientThreadApi.md#set_is_read)| **PUT** /email/client/thread/set-is-read| Mark all messages in thread as read or unread.             
