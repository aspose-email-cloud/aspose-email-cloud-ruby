
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_api.rb">
#    Copyright (c) 2018-2020 Aspose Pty Ltd. All rights reserved.
#  </copyright>
#  <summary>
#    Permission is hereby granted, free of charge, to any person obtaining a
#   copy  of this software and associated documentation files (the "Software"),
#   to deal  in the Software without restriction, including without limitation
#   the rights  to use, copy, modify, merge, publish, distribute, sublicense,
#   and/or sell  copies of the Software, and to permit persons to whom the
#   Software is  furnished to do so, subject to the following conditions:
#
#   The above copyright notice and this permission notice shall be included in
#   all  copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#   FROM,  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#   DEALINGS IN THE SOFTWARE.
#  </summary>
#  ----------------------------------------------------------------------------


require 'uri'

module AsposeEmailCloud
  # Aspose.Email Cloud API
  class EmailApi
    attr_accessor :api_client

    # Initializes a new instance of the EmailApi class.
    # @param [String] app_key Key to access the server.
    # @param [String] app_sid ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    def initialize(app_key = nil, app_sid = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v3.0', debug = false)
      @api_client = ApiClient.new(app_key, app_sid, base_url, api_version, debug)
    end

    # Adds an attachment to iCalendar file             
    # @param [AddCalendarAttachmentRequestData] request Request object.
    # @return [nil]
    def add_calendar_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Add attachment to contact document             
    # @param [AddContactAttachmentRequestData] request Request object.
    # @return [nil]
    def add_contact_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Adds an attachment to Email document             
    # @param [AddEmailAttachmentRequestData] request Request object.
    # @return [EmailDocumentResponse]
    def add_email_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'EmailDocumentResponse')
    end

    # Add attachment to document             
    # @param [AddMapiAttachmentRequestData] request Request object.
    # @return [nil]
    def add_mapi_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Ocr images             
    # @param [AiBcrOcrRequestData] request Request object.
    # @return [ListResponseOfAiBcrOcrData]
    def ai_bcr_ocr(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'ListResponseOfAiBcrOcrData')
    end

    # Ocr images from storage             
    # @param [AiBcrOcrStorageRequestData] request Request object.
    # @return [ListResponseOfAiBcrOcrData]
    def ai_bcr_ocr_storage(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'ListResponseOfAiBcrOcrData')
    end

    # Parse images to vCard properties             
    # @param [AiBcrParseRequestData] request Request object.
    # @return [ListResponseOfHierarchicalObject]
    def ai_bcr_parse(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'ListResponseOfHierarchicalObject')
    end

    # Parse images to vCard document models             
    # @param [AiBcrParseModelRequestData] request Request object.
    # @return [ListResponseOfContactDto]
    def ai_bcr_parse_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'ListResponseOfContactDto')
    end

    # Parse OCR data to vCard document models             
    # @param [AiBcrParseOcrDataModelRequestData] request Request object.
    # @return [ListResponseOfContactDto]
    def ai_bcr_parse_ocr_data_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'ListResponseOfContactDto')
    end

    # Parse images from storage to vCard files             
    # @param [AiBcrParseStorageRequestData] request Request object.
    # @return [ListResponseOfStorageFileLocation]
    def ai_bcr_parse_storage(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'ListResponseOfStorageFileLocation')
    end

    # The call proposes k most probable names for given starting characters             
    # @param [AiNameCompleteRequestData] request Request object.
    # @return [AiNameWeightedVariants]
    def ai_name_complete(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'AiNameWeightedVariants')
    end

    # Expands a person's name into a list of possible alternatives using options for expanding instructions             
    # @param [AiNameExpandRequestData] request Request object.
    # @return [AiNameWeightedVariants]
    def ai_name_expand(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'AiNameWeightedVariants')
    end

    # Expands a person's parsed name into a list of possible alternatives using options for expanding instructions             
    # @param [AiNameExpandParsedRequestData] request Request object.
    # @return [AiNameWeightedVariants]
    def ai_name_expand_parsed(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'AiNameWeightedVariants')
    end

    # Formats a person's name in correct case and name order using options for formatting instructions             
    # @param [AiNameFormatRequestData] request Request object.
    # @return [AiNameFormatted]
    def ai_name_format(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'AiNameFormatted')
    end

    # Formats a person's parsed name in correct case and name order using options for formatting instructions             
    # @param [AiNameFormatParsedRequestData] request Request object.
    # @return [AiNameFormatted]
    def ai_name_format_parsed(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'AiNameFormatted')
    end

    # Detect person's gender from name string             
    # @param [AiNameGenderizeRequestData] request Request object.
    # @return [ListResponseOfAiNameGenderHypothesis]
    def ai_name_genderize(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfAiNameGenderHypothesis')
    end

    # Detect person's gender from parsed name             
    # @param [AiNameGenderizeParsedRequestData] request Request object.
    # @return [ListResponseOfAiNameGenderHypothesis]
    def ai_name_genderize_parsed(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'ListResponseOfAiNameGenderHypothesis')
    end

    # Compare people's names. Uses options for comparing instructions             
    # @param [AiNameMatchRequestData] request Request object.
    # @return [AiNameMatchResult]
    def ai_name_match(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'AiNameMatchResult')
    end

    # Compare people's parsed names and attributes. Uses options for comparing instructions             
    # @param [AiNameMatchParsedRequestData] request Request object.
    # @return [AiNameMatchResult]
    def ai_name_match_parsed(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'AiNameMatchResult')
    end

    # Parse name to components             
    # @param [AiNameParseRequestData] request Request object.
    # @return [ListResponseOfAiNameComponent]
    def ai_name_parse(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfAiNameComponent')
    end

    # Parse person's name out of an email address             
    # @param [AiNameParseEmailAddressRequestData] request Request object.
    # @return [ListResponseOfAiNameExtracted]
    def ai_name_parse_email_address(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfAiNameExtracted')
    end

    # Adds an email from *.eml file to specified folder in email account             
    # @param [AppendEmailMessageRequestData] request Request object.
    # @return [EmailPropertyResponse]
    def append_email_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'EmailPropertyResponse')
    end

    # Adds an email from model to specified folder in email account             
    # @param [AppendEmailModelMessageRequestData] request Request object.
    # @return [ValueResponse]
    def append_email_model_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'ValueResponse')
    end

    # Adds an email from MIME to specified folder in email account             
    # @param [AppendMimeMessageRequestData] request Request object.
    # @return [ValueResponse]
    def append_mime_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'ValueResponse')
    end

    # Converts calendar document to specified format and returns as file             
    # @param [ConvertCalendarRequestData] request Request object.
    # @return [File]
    def convert_calendar(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # Convert iCalendar to AlternateView             
    # @param [ConvertCalendarModelToAlternateRequestData] request Request object.
    # @return [AlternateView]
    def convert_calendar_model_to_alternate(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'AlternateView')
    end

    # Converts calendar model to specified format and returns as file             
    # @param [ConvertCalendarModelToFileRequestData] request Request object.
    # @return [File]
    def convert_calendar_model_to_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # Convert CalendarDto to MapiCalendarDto             
    # @param [ConvertCalendarModelToMapiModelRequestData] request Request object.
    # @return [MapiCalendarDto]
    def convert_calendar_model_to_mapi_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'MapiCalendarDto')
    end

    # Converts contact document to specified format and returns as file             
    # @param [ConvertContactRequestData] request Request object.
    # @return [File]
    def convert_contact(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # Converts contact model to specified format and returns as file             
    # @param [ConvertContactModelToFileRequestData] request Request object.
    # @return [File]
    def convert_contact_model_to_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # Convert contact model to MAPI model contact representation             
    # @param [ConvertContactModelToMapiModelRequestData] request Request object.
    # @return [MapiContactDto]
    def convert_contact_model_to_mapi_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'MapiContactDto')
    end

    # Converts email document to specified format and returns as file             
    # @param [ConvertEmailRequestData] request Request object.
    # @return [File]
    def convert_email(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # Converts Email model to specified format and returns as file             
    # @param [ConvertEmailModelToFileRequestData] request Request object.
    # @return [File]
    def convert_email_model_to_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # Converts Email model to MAPI model message representation             
    # @param [ConvertEmailModelToMapiModelRequestData] request Request object.
    # @return [MapiMessageDto]
    def convert_email_model_to_mapi_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'MapiMessageDto')
    end

    # Converts MAPI calendar model to CalendarDto model             
    # @param [ConvertMapiCalendarModelToCalendarModelRequestData] request Request object.
    # @return [CalendarDto]
    def convert_mapi_calendar_model_to_calendar_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'CalendarDto')
    end

    # Converts MAPI calendar model to specified format and returns as file             
    # @param [ConvertMapiCalendarModelToFileRequestData] request Request object.
    # @return [File]
    def convert_mapi_calendar_model_to_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # Converts MAPI contact model to Contact model             
    # @param [ConvertMapiContactModelToContactModelRequestData] request Request object.
    # @return [ContactDto]
    def convert_mapi_contact_model_to_contact_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'ContactDto')
    end

    # Converts MAPI contact model to specified format and returns as file             
    # @param [ConvertMapiContactModelToFileRequestData] request Request object.
    # @return [File]
    def convert_mapi_contact_model_to_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # Converts MAPI message model to EmailDto model             
    # @param [ConvertMapiMessageModelToEmailModelRequestData] request Request object.
    # @return [EmailDto]
    def convert_mapi_message_model_to_email_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'EmailDto')
    end

    # Converts MAPI message model to specified format and returns as file             
    # @param [ConvertMapiMessageModelToFileRequestData] request Request object.
    # @return [File]
    def convert_mapi_message_model_to_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'File')
    end

    # @param [CopyFileRequestData] request Request object.
    # @return [nil]
    def copy_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # @param [CopyFolderRequestData] request Request object.
    # @return [nil]
    def copy_folder(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Create calendar file             
    # @param [CreateCalendarRequestData] request Request object.
    # @return [nil]
    def create_calendar(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Create contact document             
    # @param [CreateContactRequestData] request Request object.
    # @return [nil]
    def create_contact(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Create an email document             
    # @param [CreateEmailRequestData] request Request object.
    # @return [EmailDocumentResponse]
    def create_email(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'EmailDocumentResponse')
    end

    # Create new folder in email account             
    # @param [CreateEmailFolderRequestData] request Request object.
    # @return [nil]
    def create_email_folder(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # @param [CreateFolderRequestData] request Request object.
    # @return [nil]
    def create_folder(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Create new document             
    # @param [CreateMapiRequestData] request Request object.
    # @return [nil]
    def create_mapi(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}             
    # @param [DeleteCalendarPropertyRequestData] request Request object.
    # @return [nil]
    def delete_calendar_property(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Delete property from indexed property list             
    # @param [DeleteContactPropertyRequestData] request Request object.
    # @return [nil]
    def delete_contact_property(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Delete a folder in email account             
    # @param [DeleteEmailFolderRequestData] request Request object.
    # @return [nil]
    def delete_email_folder(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Delete message from email account by id             
    # @param [DeleteEmailMessageRequestData] request Request object.
    # @return [nil]
    def delete_email_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Delete thread by id. All messages from thread will also be deleted             
    # @param [DeleteEmailThreadRequestData] request Request object.
    # @return [nil]
    def delete_email_thread(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # @param [DeleteFileRequestData] request Request object.
    # @return [nil]
    def delete_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # @param [DeleteFolderRequestData] request Request object.
    # @return [nil]
    def delete_folder(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Remove attachment from document             
    # @param [DeleteMapiAttachmentRequestData] request Request object.
    # @return [nil]
    def delete_mapi_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Delete document properties             
    # @param [DeleteMapiPropertiesRequestData] request Request object.
    # @return [nil]
    def delete_mapi_properties(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Discover email accounts by email address. Does not validate discovered accounts.             
    # @param [DiscoverEmailConfigRequestData] request Request object.
    # @return [EmailAccountConfigList]
    def discover_email_config(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailAccountConfigList')
    end

    # Discover email accounts by email address. Validates discovered accounts using OAuth 2.0.             
    # @param [DiscoverEmailConfigOauthRequestData] request Request object.
    # @return [EmailAccountConfigList]
    def discover_email_config_oauth(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'EmailAccountConfigList')
    end

    # Discover email accounts by email address. Validates discovered accounts using login and password.             
    # @param [DiscoverEmailConfigPasswordRequestData] request Request object.
    # @return [EmailAccountConfigList]
    def discover_email_config_password(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, 'EmailAccountConfigList')
    end

    # @param [DownloadFileRequestData] request Request object.
    # @return [File]
    def download_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Fetch message mime from email account             
    # @param [FetchEmailMessageRequestData] request Request object.
    # @return [MimeResponse]
    def fetch_email_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'MimeResponse')
    end

    # Fetch message model from email account             
    # @param [FetchEmailModelRequestData] request Request object.
    # @return [EmailDto]
    def fetch_email_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailDto')
    end

    # Get messages from thread by id. All messages are fully fetched. For accounts with CacheFile only cached messages will be returned.             
    # @param [FetchEmailThreadMessagesRequestData] request Request object.
    # @return [ListResponseOfEmailDto]
    def fetch_email_thread_messages(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfEmailDto')
    end

    # Get calendar file properties             
    # @param [GetCalendarRequestData] request Request object.
    # @return [HierarchicalObject]
    def get_calendar(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'HierarchicalObject')
    end

    # Converts calendar document from storage to specified format and returns as file             
    # @param [GetCalendarAsFileRequestData] request Request object.
    # @return [File]
    def get_calendar_as_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Get iCalendar document attachment by name             
    # @param [GetCalendarAttachmentRequestData] request Request object.
    # @return [File]
    def get_calendar_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Converts calendar file to a MAPI model representation             
    # @param [GetCalendarFileAsMapiModelRequestData] request Request object.
    # @return [MapiCalendarDto]
    def get_calendar_file_as_mapi_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'MapiCalendarDto')
    end

    # Converts calendar document to a model representation             
    # @param [GetCalendarFileAsModelRequestData] request Request object.
    # @return [CalendarDto]
    def get_calendar_file_as_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'CalendarDto')
    end

    # Get iCalendar files list in folder on storage             
    # @param [GetCalendarListRequestData] request Request object.
    # @return [ListResponseOfHierarchicalObjectResponse]
    def get_calendar_list(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfHierarchicalObjectResponse')
    end

    # Get calendar file             
    # @param [GetCalendarModelRequestData] request Request object.
    # @return [CalendarDto]
    def get_calendar_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'CalendarDto')
    end

    # Get iCalendar from storage as AlternateView             
    # @param [GetCalendarModelAsAlternateRequestData] request Request object.
    # @return [AlternateView]
    def get_calendar_model_as_alternate(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'AlternateView')
    end

    # Get iCalendar list from storage folder             
    # @param [GetCalendarModelListRequestData] request Request object.
    # @return [CalendarDtoList]
    def get_calendar_model_list(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'CalendarDtoList')
    end

    # Converts calendar document from storage to specified format and returns as file             
    # @param [GetContactAsFileRequestData] request Request object.
    # @return [File]
    def get_contact_as_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Get attachment file by name             
    # @param [GetContactAttachmentRequestData] request Request object.
    # @return [File]
    def get_contact_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Converts contact file to a MAPI model representation             
    # @param [GetContactFileAsMapiModelRequestData] request Request object.
    # @return [MapiContactDto]
    def get_contact_file_as_mapi_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'MapiContactDto')
    end

    # Converts contact document to a model representation             
    # @param [GetContactFileAsModelRequestData] request Request object.
    # @return [ContactDto]
    def get_contact_file_as_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'ContactDto')
    end

    # Get contact list from storage folder             
    # @param [GetContactListRequestData] request Request object.
    # @return [ListResponseOfHierarchicalObjectResponse]
    def get_contact_list(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfHierarchicalObjectResponse')
    end

    # Get contact document.             
    # @param [GetContactModelRequestData] request Request object.
    # @return [ContactDto]
    def get_contact_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ContactDto')
    end

    # Get contact list from storage folder.             
    # @param [GetContactModelListRequestData] request Request object.
    # @return [ContactDtoList]
    def get_contact_model_list(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ContactDtoList')
    end

    # Get contact document properties             
    # @param [GetContactPropertiesRequestData] request Request object.
    # @return [HierarchicalObject]
    def get_contact_properties(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'HierarchicalObject')
    end

    # @param [GetDiscUsageRequestData] request Request object.
    # @return [DiscUsage]
    def get_disc_usage(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'DiscUsage')
    end

    # Get email document             
    # @param [GetEmailRequestData] request Request object.
    # @return [EmailDocument]
    def get_email(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailDocument')
    end

    # Converts email document from storage to specified format and returns as file             
    # @param [GetEmailAsFileRequestData] request Request object.
    # @return [File]
    def get_email_as_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Get email attachment by name             
    # @param [GetEmailAttachmentRequestData] request Request object.
    # @return [File]
    def get_email_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Get email client account from storage             
    # @param [GetEmailClientAccountRequestData] request Request object.
    # @return [EmailClientAccount]
    def get_email_client_account(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailClientAccount')
    end

    # Get email client multi account file (*.multi.account). Will respond error if file extension is not \".multi.account\".             
    # @param [GetEmailClientMultiAccountRequestData] request Request object.
    # @return [EmailClientMultiAccount]
    def get_email_client_multi_account(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailClientMultiAccount')
    end

    # Converts email file to a MAPI model representation             
    # @param [GetEmailFileAsMapiModelRequestData] request Request object.
    # @return [MapiMessageDto]
    def get_email_file_as_mapi_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'MapiMessageDto')
    end

    # Converts email document to a model representation             
    # @param [GetEmailFileAsModelRequestData] request Request object.
    # @return [EmailDto]
    def get_email_file_as_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'EmailDto')
    end

    # Get email document.             
    # @param [GetEmailModelRequestData] request Request object.
    # @return [EmailDto]
    def get_email_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailDto')
    end

    # Get email list from storage folder.             
    # @param [GetEmailModelListRequestData] request Request object.
    # @return [EmailDtoList]
    def get_email_model_list(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailDtoList')
    end

    # Get an email document property by its name             
    # @param [GetEmailPropertyRequestData] request Request object.
    # @return [EmailPropertyResponse]
    def get_email_property(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailPropertyResponse')
    end

    # @param [GetFileVersionsRequestData] request Request object.
    # @return [FileVersions]
    def get_file_versions(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'FileVersions')
    end

    # @param [GetFilesListRequestData] request Request object.
    # @return [FilesList]
    def get_files_list(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'FilesList')
    end

    # Get document attachment as file stream             
    # @param [GetMapiAttachmentRequestData] request Request object.
    # @return [File]
    def get_mapi_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Get document attachment list             
    # @param [GetMapiAttachmentsRequestData] request Request object.
    # @return [ListResponseOfString]
    def get_mapi_attachments(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfString')
    end

    # Get calendar file             
    # @param [GetMapiCalendarModelRequestData] request Request object.
    # @return [MapiCalendarDto]
    def get_mapi_calendar_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'MapiCalendarDto')
    end

    # Get contact document.             
    # @param [GetMapiContactModelRequestData] request Request object.
    # @return [MapiContactDto]
    def get_mapi_contact_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'MapiContactDto')
    end

    # Get document list from storage folder             
    # @param [GetMapiListRequestData] request Request object.
    # @return [ListResponseOfHierarchicalObjectResponse]
    def get_mapi_list(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfHierarchicalObjectResponse')
    end

    # MAPI message document.             
    # @param [GetMapiMessageModelRequestData] request Request object.
    # @return [MapiMessageDto]
    def get_mapi_message_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'MapiMessageDto')
    end

    # Get document properties             
    # @param [GetMapiPropertiesRequestData] request Request object.
    # @return [HierarchicalObjectResponse]
    def get_mapi_properties(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'HierarchicalObjectResponse')
    end

    # Check email address is disposable             
    # @param [IsEmailAddressDisposableRequestData] request Request object.
    # @return [ValueTOfBoolean]
    def is_email_address_disposable(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ValueTOfBoolean')
    end

    # Get folders list in email account             
    # @param [ListEmailFoldersRequestData] request Request object.
    # @return [ListResponseOfMailServerFolder]
    def list_email_folders(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfMailServerFolder')
    end

    # Get messages from folder, filtered by query             
    # The query string should have the following view.      The example of a simple expression:       '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.      The number of simple expressions can make a compound one, ex.:     (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3     >,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator      At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message      Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message      Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item      Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once      The field value (<Field value>) can take the following values:     For text fields - any string,     For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\",     For flags (fields of boolean type) - either \"True\", or \"False\"              
    # @param [ListEmailMessagesRequestData] request Request object.
    # @return [ListResponseOfString]
    def list_email_messages(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfString')
    end

    # Get messages from folder, filtered by query             
    # The query string should have the following view.      The example of a simple expression:       '<Field name>' <Comparison operator> '<Field value>',  where &lt;Field Name&gt; - the name of a message field through which filtering is made, &lt;Comparison operator&gt; - comparison operators, as their name implies, allow to compare message field and specified value, &lt;Field value&gt; - value to be compared with a message field.      The number of simple expressions can make a compound one, ex.:     (<Simple expression 1> & <Simple expression 2>) | <Simple expression 3     >,  where \"&amp;\" - logical-AND operator, \"|\" - logical-OR operator      At present the following values are allowed as a field name (<Field name>):  \"To\" - represents a TO field of message, \"Text\" - represents string in the header or body of the message, \"Bcc\" - represents a BCC field of message, \"Body\" - represents a string in the body of message, \"Cc\" - represents a CC field of message, \"From\" - represents a From field of message, \"Subject\" - represents a string in the subject of message, \"InternalDate\" - represents an internal date of message, \"SentDate\" - represents a sent date of message      Additionally, the following field names are allowed for IMAP-protocol:  \"Answered\" - represents an /Answered flag of message \"Seen\" - represents a /Seen flag of message \"Flagged\" - represents a /Flagged flag of message \"Draft\" - represents a /Draft flag of message \"Deleted\" - represents a Deleted/ flag of message \"Recent\" - represents a Deleted/ flag of message \"MessageSize\" - represents a size (in bytes) of message      Additionally, the following field names are allowed for Exchange:  \"IsRead\" - Indicates whether the message has been read \"HasAttachment\" - Indicates whether or not the message has attachments \"IsSubmitted\" - Indicates whether the message has been submitted to the Outbox \"ContentClass\" - represents a content class of item      Additionally, the following field names are allowed for pst/ost files:  \"MessageClass\" - Represents a message class \"ContainerClass\" - Represents a folder container class \"Importance\" - Represents a message importance \"MessageSize\" - represents a size (in bytes) of message \"FolderName\" - represents a folder name \"ContentsCount\" - represents a total number of items in the folder \"UnreadContentsCount\" - represents the number of unread items in the folder. \"Subfolders\" - Indicates whether or not the folder has subfolders \"Read\" - the message is marked as having been read \"HasAttachment\" - the message has at least one attachment \"Unsent\" - the message is still being composed \"Unmodified\" - the message has not been modified since it was first saved (if unsent) or it was delivered (if sent) \"FromMe\" - the user receiving the message was also the user who sent the message \"Resend\" - the message includes a request for a resend operation with a non-delivery report \"NotifyRead\" - the user who sent the message has requested notification when a recipient first reads it \"NotifyUnread\" - the user who sent the message has requested notification when a recipient deletes it before reading or the Message object expires \"EverRead\" - the message has been read at least once      The field value (<Field value>) can take the following values:     For text fields - any string,     For date type fields - the string of \"d-MMM-yyy\" format, ex. \"10-Feb-2009\",     For flags (fields of boolean type) - either \"True\", or \"False\"              
    # @param [ListEmailModelsRequestData] request Request object.
    # @return [ListResponseOfEmailDto]
    def list_email_models(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfEmailDto')
    end

    # Get message threads from folder. All messages are partly fetched (without email body and other fields)             
    # @param [ListEmailThreadsRequestData] request Request object.
    # @return [EmailThreadList]
    def list_email_threads(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'EmailThreadList')
    end

    # Move message to another folder             
    # @param [MoveEmailMessageRequestData] request Request object.
    # @return [nil]
    def move_email_message(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Move thread to another folder             
    # @param [MoveEmailThreadRequestData] request Request object.
    # @return [nil]
    def move_email_thread(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # @param [MoveFileRequestData] request Request object.
    # @return [nil]
    def move_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # @param [MoveFolderRequestData] request Request object.
    # @return [nil]
    def move_folder(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # @param [ObjectExistsRequestData] request Request object.
    # @return [ObjectExist]
    def object_exists(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ObjectExist')
    end

    # Save iCalendar             
    # @param [SaveCalendarModelRequestData] request Request object.
    # @return [nil]
    def save_calendar_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Save contact.             
    # @param [SaveContactModelRequestData] request Request object.
    # @return [nil]
    def save_contact_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Create email client account file (*.account) with any of supported credentials             
    # @param [SaveEmailClientAccountRequestData] request Request object.
    # @return [nil]
    def save_email_client_account(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Create email client multi account file (*.multi.account). Will respond error if file extension is not \".multi.account\".             
    # @param [SaveEmailClientMultiAccountRequestData] request Request object.
    # @return [nil]
    def save_email_client_multi_account(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Save email document.             
    # @param [SaveEmailModelRequestData] request Request object.
    # @return [nil]
    def save_email_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Create email account file (*.account) with login/password authentication             
    # @param [SaveMailAccountRequestData] request Request object.
    # @return [nil]
    def save_mail_account(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Create email account file (*.account) with OAuth             
    # @param [SaveMailOAuthAccountRequestData] request Request object.
    # @return [nil]
    def save_mail_o_auth_account(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Save MAPI Calendar to storage.             
    # @param [SaveMapiCalendarModelRequestData] request Request object.
    # @return [nil]
    def save_mapi_calendar_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Save contact.             
    # @param [SaveMapiContactModelRequestData] request Request object.
    # @return [nil]
    def save_mapi_contact_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Save MAPI message.             
    # @param [SaveMapiMessageModelRequestData] request Request object.
    # @return [nil]
    def save_mapi_message_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Send an email from *.eml file located on storage             
    # @param [SendEmailRequestData] request Request object.
    # @return [nil]
    def send_email(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Send an email specified by MIME in request             
    # @param [SendEmailMimeRequestData] request Request object.
    # @return [nil]
    def send_email_mime(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Send an email specified by model in request             
    # @param [SendEmailModelRequestData] request Request object.
    # @return [nil]
    def send_email_model(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Set email document property value             
    # @param [SetEmailPropertyRequestData] request Request object.
    # @return [EmailPropertyResponse]
    def set_email_property(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'EmailPropertyResponse')
    end

    # Sets \"Message is read\" flag             
    # @param [SetEmailReadFlagRequestData] request Request object.
    # @return [nil]
    def set_email_read_flag(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :POST, nil)
      nil
    end

    # Mark all messages in thread as read or unread             
    # @param [SetEmailThreadReadFlagRequestData] request Request object.
    # @return [nil]
    def set_email_thread_read_flag(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # @param [StorageExistsRequestData] request Request object.
    # @return [StorageExist]
    def storage_exists(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'StorageExist')
    end

    # Update calendar file properties             
    # @param [UpdateCalendarPropertiesRequestData] request Request object.
    # @return [nil]
    def update_calendar_properties(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Update contact document properties             
    # @param [UpdateContactPropertiesRequestData] request Request object.
    # @return [nil]
    def update_contact_properties(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Update document properties             
    # @param [UpdateMapiPropertiesRequestData] request Request object.
    # @return [nil]
    def update_mapi_properties(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # @param [UploadFileRequestData] request Request object.
    # @return [FilesUploadResult]
    def upload_file(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, 'FilesUploadResult')
    end

    private

    def make_request(http_request, method, return_type)
      call_api(http_request, method, return_type)
    rescue ApiError => e
      if e.code.equal? 401
        request_token
        return call_api(http_request, method, return_type)
      end
      raise

    end

    def call_api(http_request, method, return_type)
      response = @api_client.call_api(method,
                                      http_request.resource_path,
                                      header_params: http_request.header_params,
                                      query_params: http_request.query_params,
                                      form_params: http_request.form_params,
                                      body: http_request.body,
                                      auth_names: http_request.auth_names,
                                      return_type: return_type)
      response[0]
    end

    def request_token
      config = @api_client.config
      request_url = '/connect/token'
      form_params =
        {
          'grant_type': 'client_credentials',
          'client_id': config.api_key[:app_sid],
          'client_secret': config.api_key[:api_key]
        }

      header_params =
        {
          'Accept' => 'application/json',
          'Content-Type' =>'application/x-www-form-urlencoded'
        }

      base_path = @api_client.config.base_path
      @api_client.config.base_path = ''

      data = @api_client.call_api(:POST, request_url,
                                  header_params: header_params,
                                  form_params: form_params,
                                  return_type: 'Object',
                                  host: @api_client.config.auth_url)
      access_token = data[0]['access_token'.to_sym]

      @api_client.config.base_path = base_path
      @api_client.config.access_token = access_token
    end
  end
end

