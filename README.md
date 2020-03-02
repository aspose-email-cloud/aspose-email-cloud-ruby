# Aspose.Email Cloud SDK for Ruby [![Gem](https://img.shields.io/gem/v/aspose_email_cloud)](https://rubygems.org/gems/aspose_email_cloud) [![License](https://img.shields.io/github/license/aspose-email-cloud/aspose-email-cloud-ruby)](https://rubygems.org/gems/aspose_email_cloud) ![tests](https://github.com/aspose-email-cloud/aspose-email-cloud-ruby/workflows/tests/badge.svg)
This repository contains Aspose.Email Cloud SDK for Ruby source code. This SDK allows you to work with Aspose.Email Cloud REST APIs in your Ruby applications quickly and easily, with zero initial cost.

[Aspose.Email Cloud home](https://products.aspose.cloud/email/family "Aspose.Email Cloud")  
[API Reference](https://apireference.aspose.cloud/email/)  

# Key features

Aspose.Email Cloud is a REST API for creating email applications that work with standard email file formats. This SDK:
- Lets developers manipulate different emails’ formats such as Outlook MSG, EML, VCard, and iCalendar files
- Has a built-in email client
- Supports AI functionalities:
    - The Business card recognition
    - The Name API for parsing and handling personal names

## How to use the SDK?
The complete source code is available in the GIT repository. 
Use [reference documentation](https://github.com/aspose-email-cloud/aspose-email-cloud-ruby/blob/master/docs/README.md), [examples from this document](#usage-examples) and [wiki](https://github.com/aspose-email-cloud/aspose-email-cloud-ruby/wiki)

### Prerequisites

To use this SDK, you need an App SID and an App Key; they can be looked up at [Aspose Cloud Dashboard](https://dashboard.aspose.cloud/#/apps) (it requires free registration in Aspose Cloud for this).

### Installation
You can either directly use it in your project via source code or get [gem](https://rubygems.org/gems/aspose_email_cloud).

### Usage examples
To use the API, you should create an EmailApi object:
```ruby
api = EmailApi.new('Your App Key', 'Your App Sid')
```

#### Business cards recognition API
See examples below:

<details open>
    <summary>Parse business card images to VCard contact files</summary>

```ruby
# Upload a business card image to storage
storage = 'First Storage'
image = File.new('path/to/image')
image_file_name = 'someFileName.png' # Supports different image formats: PNG, JPEG, BMP, TIFF, GIF, etc.
api.upload_file(
    UploadFileRequestData.new(image_file_name, image, storage))
out_folder = 'some/folder/on/storage' # Business card recognition results will be saved here
api.create_folder(CreateFolderRequestData.new(out_folder, storage))
# Call business card recognition action
result = api.ai_bcr_parse_storage(AiBcrParseStorageRequestData.new(
    AiBcrParseStorageRq.new(
        nil,
        [AiBcrImageStorageFile.new(true, StorageFileLocation.new(storage, '', fileName))],
        StorageFolderLocation.new(storage, out_folder))))
# Get file name from a recognition result
contact_file = result.value[0] # result.value can contain multiple files, if we sent multicard images or multiple images
# You can download the VCard file, which produced by the recognition method
downloaded = api.download_file(DownloadFileRequestData.new(
    "#{contact_file.folder_path}/#{contact_file.file_name}", contact_file.storage))
# Let's print file contents:
content = IO.read(downloaded)
puts content
# Also, you can get VCard object properties’ list using Contact API
contact_properties = api.get_contact_properties(
    GetContactPropertiesRequestData.new(
        'vcard',
        contact_file.file_name,
        contact_file.folder_path,
        contact_file.storage))
# All VCard’s properties are available as a list. Complex properties are represented as hierarchical structures.
# Let's print all primitive properties’ values:
contact_properties.internal_properties
    .filter {|property| property.type == 'PrimitiveObject'}
    .each {|property| puts "Property name:#{property.name}, value:#{property.value}"}
```
</details>

<details>
    <summary>Parse images directly, without the using of a storage</summary>

```ruby

# Read image from file and convert it to Base64 string
image = File.open('path/to/image', 'rb') { |f|
    bin = f.read
    Base64.encode64(bin)
}
result = api.ai_bcr_parse(AiBcrParseRequestData.new(
    AiBcrBase64Rq.new(nil, [AiBcrBase64Image.new(true, image)])))
# Result contains all recognized VCard objects (only the one in our case)
contact_properties = result.value[0]
# VCard object is available as a list of properties, without any external calls:
contact_properties.internal_properties
    .filter {|property| property.type == 'PrimitiveObject'}
    .each {|property| puts "Property name:#{property.name}, value:#{property.value}"}
```
</details>

#### Name API
See examples below:
<details open>
    <summary>Detect a person's gender by name</summary>

```ruby
result = api.ai_name_genderize(
    AiNameGenderizeRequestData.new('John Cane'))
# the result contains a list of hypothesis about a person's gender.
# all hypothesis include score, so you can use the most scored version, which will be the first in a list:
puts result.value[0].gender # prints 'Male'
```
</details>

<details>
    <summary>Format person's name using defined format</summary>

```ruby
result = api.ai_name_format(
    AiNameFormatRequestData.new('Mr. John Michael Cane', nil, nil, nil, nil, '%t%L%f%m'))
puts result.name # prints 'Mr. Cane J. M.'
```
</details>

<details>
    <summary>Compare the names to find out if they belong to the same person or not</summary>

```ruby
first = 'John Michael Cane'
second = 'Cane J.'
result = api.ai_name_match(
    AiNameMatchRequestData.new(first, second))
puts result.similarity >= 0.5 # prints 'true', names look similar
```
</details>

<details>
    <summary>Expand a person's name into a list of possible alternatives</summary>

```ruby
name = 'Smith Bobby'
result = api.ai_name_expand(AiNameExpandRequestData.new(name))
result.names
    .each {|weighted|puts weighted.name} # prints 'Mr. Smith', 'B. Smith', etc.
```
</details>

<details>
    <summary>Get k most probable names for given starting characters</summary>

```ruby
prefix = 'Dav'
result = @api.ai_name_complete(
    AiNameCompleteRequestData.new(prefix))
names = result.names
    .map {|weighted|"#{prefix}#{weighted.name}"}
    .each {|name|puts name} # prints 'David', 'Dave', 'Davis', etc.
```
</details>

<details>
    <summary>Parse out a person's name from an email address.</summary>

```ruby
address = 'john-cane@gmail.com'
result = @api.ai_name_parse_email_address(
    AiNameParseEmailAddressRequestData.new(address))
extracted_values = result.value
    .map { |item| item.name }
    .reduce(:+)
given_name = extracted_values.find {|item| item.category == 'GivenName'}
surname = extracted_values.find {|item| item.category == 'Surname'}
puts given_name.value # prints 'John'
puts surname.value # prints 'Cane'
```
</details>

# Licensing
All Aspose.Email Cloud SDKs, helper scripts and templates are licensed under [MIT License](LICENSE).

# Resources
+ [**SDK Reference documentation**](docs/README.md)
+ [**Website**](https://www.aspose.cloud)
+ [**Product Home**](https://products.aspose.cloud/Email/cloud)
+ [**Documentation**](https://docs.aspose.cloud/display/Emailcloud/Home)
+ [**API Reference**](https://apireference.aspose.cloud/email/)
+ [**Free Support Forum**](https://forum.aspose.cloud/c/email)
+ [**Paid Support Helpdesk**](https://helpdesk.aspose.cloud/)
+ [**Blog**](https://blog.aspose.cloud/category/aspose-products/aspose-email-cloud/)
+ [**Git repository: Aspose.Email Cloud SDK for .Net**](https://github.com/aspose-email-cloud/aspose-email-cloud-dotnet)
+ [**Git repository: Aspose.Email Cloud SDK for Ruby**](https://github.com/aspose-email-cloud/aspose-email-cloud-ruby)
+ [**Git repository: Aspose.Email Cloud SDK for Python**](https://github.com/aspose-email-cloud/aspose-email-cloud-python)
+ [**Git repository: Aspose.Email Cloud SDK for PHP**](https://github.com/aspose-email-cloud/aspose-email-cloud-php)
+ [**Git repository: Aspose.Email Cloud SDK for Typescript**](https://github.com/aspose-email-cloud/aspose-email-cloud-node)
+ [**Git repository: Aspose.Email Cloud SDK for Java**](https://github.com/aspose-email-cloud/aspose-email-cloud-java)
