#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="aspose-email-cloud.rb">
#    Copyright (c) 2018-2019 Aspose Pty Ltd. All rights reserved.
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


# Common files
require_relative './aspose-email-cloud/api_client'
require_relative './aspose-email-cloud/api_error'
require_relative './aspose-email-cloud/version'
require_relative './aspose-email-cloud/configuration'

# Models
require_relative './aspose-email-cloud/models/account_base_request'
require_relative './aspose-email-cloud/models/add_attachment_request'
require_relative './aspose-email-cloud/models/base_object'
require_relative './aspose-email-cloud/models/contact_format'
require_relative './aspose-email-cloud/models/create_email_request'
require_relative './aspose-email-cloud/models/disc_usage'
require_relative './aspose-email-cloud/models/email_account_request'
require_relative './aspose-email-cloud/models/email_document'
require_relative './aspose-email-cloud/models/email_document_response'
require_relative './aspose-email-cloud/models/email_properties'
require_relative './aspose-email-cloud/models/email_property'
require_relative './aspose-email-cloud/models/email_property_response'
require_relative './aspose-email-cloud/models/error'
require_relative './aspose-email-cloud/models/error_details'
require_relative './aspose-email-cloud/models/file_versions'
require_relative './aspose-email-cloud/models/files_list'
require_relative './aspose-email-cloud/models/files_upload_result'
require_relative './aspose-email-cloud/models/hierarchical_object_request'
require_relative './aspose-email-cloud/models/hierarchical_object_response'
require_relative './aspose-email-cloud/models/link'
require_relative './aspose-email-cloud/models/list_response_of_hierarchical_object_response'
require_relative './aspose-email-cloud/models/list_response_of_mail_server_folder'
require_relative './aspose-email-cloud/models/list_response_of_string'
require_relative './aspose-email-cloud/models/mail_server_folder'
require_relative './aspose-email-cloud/models/mime_response'
require_relative './aspose-email-cloud/models/object_exist'
require_relative './aspose-email-cloud/models/set_email_property_request'
require_relative './aspose-email-cloud/models/storage_exist'
require_relative './aspose-email-cloud/models/storage_file'
require_relative './aspose-email-cloud/models/storage_folder_location'
require_relative './aspose-email-cloud/models/value_response'
require_relative './aspose-email-cloud/models/append_email_account_base_request'
require_relative './aspose-email-cloud/models/create_folder_base_request'
require_relative './aspose-email-cloud/models/delete_folder_base_request'
require_relative './aspose-email-cloud/models/delete_message_base_request'
require_relative './aspose-email-cloud/models/file_version'
require_relative './aspose-email-cloud/models/hierarchical_object'
require_relative './aspose-email-cloud/models/indexed_hierarchical_object'
require_relative './aspose-email-cloud/models/indexed_primitive_object'
require_relative './aspose-email-cloud/models/primitive_object'
require_relative './aspose-email-cloud/models/save_email_account_request'
require_relative './aspose-email-cloud/models/save_o_auth_email_account_request'
require_relative './aspose-email-cloud/models/send_email_base_request'
require_relative './aspose-email-cloud/models/send_email_mime_base_request'
require_relative './aspose-email-cloud/models/set_message_read_flag_account_base_request'
require_relative './aspose-email-cloud/models/storage_file_location'
require_relative './aspose-email-cloud/models/append_email_base_request'
require_relative './aspose-email-cloud/models/append_email_mime_base_request'

# APIs
require_relative 'aspose-email-cloud/api/calendar_api'
require_relative 'aspose-email-cloud/api/contact_api'
require_relative 'aspose-email-cloud/api/email_api'
require_relative 'aspose-email-cloud/api/email_client_api'
require_relative 'aspose-email-cloud/api/file_api'
require_relative 'aspose-email-cloud/api/folder_api'
require_relative 'aspose-email-cloud/api/mapi_api'
require_relative 'aspose-email-cloud/api/storage_api'


#Model requests
require_relative './aspose-email-cloud/models/requests/add_email_attachment_request_data.rb'
require_relative './aspose-email-cloud/models/requests/create_email_request_data.rb'
require_relative './aspose-email-cloud/models/requests/email_request.rb'
require_relative './aspose-email-cloud/models/requests/get_email_attachment_request_data.rb'
require_relative './aspose-email-cloud/models/requests/get_email_property_request_data.rb'
require_relative './aspose-email-cloud/models/requests/get_email_request_data.rb'
require_relative './aspose-email-cloud/models/requests/http_request.rb'
require_relative './aspose-email-cloud/models/requests/set_email_property_request_data.rb'
