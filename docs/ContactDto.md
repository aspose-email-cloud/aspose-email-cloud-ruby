# AsposeEmailCloud::ContactDto
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**associated_persons** | [**Array&lt;AssociatedPerson&gt;**](AssociatedPerson.md) | Associated persons.              | [optional] 
**attachments** | [**Array&lt;Attachment&gt;**](Attachment.md) | Document attachments.              | [optional] 
**company_name** | **String** | Company name.              | [optional] 
**computer_network_name** | **String** | Computer network.              | [optional] 
**customer_id** | **String** | Customer id.              | [optional] 
**department_name** | **String** | Department name.              | [optional] 
**display_name** | **String** | Display name.              | [optional] 
**email_addresses** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) | Person&#39;s email addresses.              | [optional] 
**events** | [**Array&lt;CustomerEvent&gt;**](CustomerEvent.md) | Person&#39;s events.              | [optional] 
**file_as** | **String** | A name used for sorting.              | [optional] 
**file_as_mapping** | **String** | Specifies how to generate and recompute the value of the dispidFileAs property when other contact name properties change. Coincides MS-OXPROPS revision 16.2 from 7/31/2014. Enum, available values: Empty, DisplayName, FirstName, LastName, Organization, LastFirstMiddle, OrgLastFirstMiddle, LastFirstMiddleOrg, LastFirstMiddle2, LastFirstMiddle3, OrgLastFirstMiddle2, OrgLastFirstMiddle3, LastFirstMiddleOrg2, LastFirstMiddleOrg3, LastFirstMiddleGen, FirstMiddleLastGen, LastFirstMiddleGen2, BestMatch, AccordingToLocale, None | 
**free_busy_location** | **String** | URL path from which a client can retrieve free/busy information for the contact as an iCal file.              | [optional] 
**gender** | **String** | Enum defines gender of a person. Enum, available values: Unspecified, Female, Male | 
**given_name** | **String** | Person&#39;s given name.              | [optional] 
**government_id_number** | **String** | Government id number.              | [optional] 
**hobbies** | **String** | Person&#39;s hobbies.              | [optional] 
**initials** | **String** | Person&#39;s initials.              | [optional] 
**instant_messengers** | [**Array&lt;InstantMessengerAddress&gt;**](InstantMessengerAddress.md) | Person&#39;s instant messenger addresses.              | [optional] 
**job_title** | **String** | Person&#39;s job title.              | [optional] 
**language** | **String** | Language.              | [optional] 
**location** | **String** | Person&#39;s location.              | [optional] 
**middle_name** | **String** | Person&#39;s middle name.              | [optional] 
**nickname** | **String** | Person&#39;s nickname.              | [optional] 
**notes** | **String** | Notes.              | [optional] 
**notes_format** | **String** | Defines format of a text. Enum, available values: Text, Html | 
**office_location** | **String** | Office location.              | [optional] 
**organizational_id_number** | **String** | Contains an identifier for the mail user used within the mail user&#39;s organization.              | [optional] 
**phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) | Person&#39;s phone numbers.              | [optional] 
**photo** | [**ContactPhoto**](ContactPhoto.md) | Person&#39;s photo.              | [optional] 
**physical_addresses** | [**Array&lt;PostalAddress&gt;**](PostalAddress.md) | Person&#39;s physical addresses.              | [optional] 
**preferred_text_encoding** | **String** | Encoding for all text properties.              | [optional] 
**prefix** | **String** | A prefix of a full name such like Mr.(mister), Dr.(doctor) and so on.              | [optional] 
**profession** | **String** | A job position of a person in a company.              | [optional] 
**suffix** | **String** | A suffix of a full name such like Jr.(junior), Sr.(senior) and so on.              | [optional] 
**surname** | **String** | Person&#39;s surname.              | [optional] 
**urls** | [**Array&lt;Url&gt;**](Url.md) | Person&#39;s urls.              | [optional] 



[[Back to Model list]](Models.md) [[Back to README]](README.md)


