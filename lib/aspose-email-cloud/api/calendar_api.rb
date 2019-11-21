#part: api/email_api.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_api.rb">
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


require 'uri'

module AsposeEmailCloud
  # Aspose.Email Cloud API
  class CalendarApi
    attr_accessor :api_client

    # Initializes a new instance of the CalendarApi class.
    # @param [String] app_key Key to access the server.
    # @param [String] app_sid ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    def initialize(app_key = nil, app_sid = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v3.0', debug = false)
      @api_client = ApiClient.new(app_key, app_sid, base_url, api_version, debug)
    end

    # Adds an attachment to iCalendar file
    # @param [add_calendar_attachmentRequest] request Request object.
    # @return [nil]
    def add_calendar_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Create calendar file
    # @param [create_calendarRequest] request Request object.
    # @return [nil]
    def create_calendar(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}
    # @param [delete_calendar_propertyRequest] request Request object.
    # @return [nil]
    def delete_calendar_property(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Get calendar file properties
    # @param [get_calendarRequest] request Request object.
    # @return [HierarchicalObject]
    def get_calendar(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'HierarchicalObject')
    end

    # Get iCalendar document attachment by name
    # @param [get_calendar_attachmentRequest] request Request object.
    # @return [File]
    def get_calendar_attachment(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'File')
    end

    # Get iCalendar files list in folder on storage
    # @param [get_calendar_listRequest] request Request object.
    # @return [ListResponseOfHierarchicalObjectResponse]
    def get_calendar_list(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :GET, 'ListResponseOfHierarchicalObjectResponse')
    end

    # Update calendar file properties
    # @param [update_calendar_propertiesRequest] request Request object.
    # @return [nil]
    def update_calendar_properties(request)
      http_request = request.to_http_info(@api_client)
      make_request(http_request, :PUT, nil)
      nil
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
                                  return_type: 'Object')
      access_token = data[0]['access_token'.to_sym]

      @api_client.config.base_path = base_path
      @api_client.config.access_token = access_token
    end
  end
end

#part: models/requests/add_calendar_attachment_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="add_calendar_attachment_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for add_calendar_attachment operation.
  class add_calendar_attachment_request_data < EmailRequest

    # Adds an attachment to iCalendar file
    # @param [String] name Calendar file name in storage
    # @param [String] attachment Attachment file name in storage
    # @param [AddAttachmentRequest] request Storage name and folder path for calendar and attachment files
    def initialize(name, attachment, request)
      @name = name
      @attachment = attachment
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling CalendarApi.add_calendar_attachment"
      end

      # verify the required parameter 'attachment' is set
      if api_client.config.client_side_validation && @attachment.nil?
        raise ArgumentError, "Missing the required parameter 'attachment' when calling CalendarApi.add_calendar_attachment"
      end

      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling CalendarApi.add_calendar_attachment"
      end

      # resource path
      local_var_path = '/email/Calendar/{name}/attachments/{attachment}'.sub('{' + 'name' + '}', @name.to_s).sub('{' + 'attachment' + '}', @attachment.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/create_calendar_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_calendar_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for create_calendar operation.
  class create_calendar_request_data < EmailRequest

    # Create calendar file
    # @param [String] name Calendar file name in storage
    # @param [HierarchicalObjectRequest] request 
    def initialize(name, request)
      @name = name
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling CalendarApi.create_calendar"
      end

      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling CalendarApi.create_calendar"
      end

      # resource path
      local_var_path = '/email/Calendar/{name}'.sub('{' + 'name' + '}', @name.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/delete_calendar_property_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="delete_calendar_property_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for delete_calendar_property operation.
  class delete_calendar_property_request_data < EmailRequest

    # Deletes indexed property by index and name. To delete Reminder attachment, use path ReminderAttachment/{ReminderIndex}/{AttachmentIndex}
    # @param [String] name iCalendar file name in storage
    # @param [String] member_name Indexed property name
    # @param [String] index Property index path
    # @param [StorageFolderLocation] request Storage detail to specify iCalendar file location
    def initialize(name, member_name, index, request)
      @name = name
      @member_name = member_name
      @index = index
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling CalendarApi.delete_calendar_property"
      end

      # verify the required parameter 'member_name' is set
      if api_client.config.client_side_validation && @member_name.nil?
        raise ArgumentError, "Missing the required parameter 'member_name' when calling CalendarApi.delete_calendar_property"
      end

      # verify the required parameter 'index' is set
      if api_client.config.client_side_validation && @index.nil?
        raise ArgumentError, "Missing the required parameter 'index' when calling CalendarApi.delete_calendar_property"
      end

      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling CalendarApi.delete_calendar_property"
      end

      # resource path
      local_var_path = '/email/Calendar/{name}/properties/{memberName}/{index}'.sub('{' + 'name' + '}', @name.to_s).sub('{' + 'memberName' + '}', @member_name.to_s).sub('{' + 'index' + '}', @index.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/get_calendar_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_calendar_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for get_calendar operation.
  class get_calendar_request_data < EmailRequest

    # Get calendar file properties
    # @param [String] name iCalendar file name in storage
    # @param [String] folder Path to folder in storage
    # @param [String] storage Storage name
    def initialize(name, folder = nil, storage = nil)
      @name = name
      @folder = folder
      @storage = storage
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling CalendarApi.get_calendar"
      end

      # resource path
      local_var_path = '/email/Calendar/{name}/properties'.sub('{' + 'name' + '}', @name.to_s)

      # query parameters
      query_params = {}
      query_params[:folder] = @folder unless @folder.nil?
      query_params[:storage] = @storage unless @storage.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/get_calendar_attachment_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_calendar_attachment_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for get_calendar_attachment operation.
  class get_calendar_attachment_request_data < EmailRequest

    # Get iCalendar document attachment by name
    # @param [String] name iCalendar document file name
    # @param [String] attachment Attachment name or index
    # @param [String] folder Path to folder in storage
    # @param [String] storage Storage name
    def initialize(name, attachment, folder = nil, storage = nil)
      @name = name
      @attachment = attachment
      @folder = folder
      @storage = storage
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling CalendarApi.get_calendar_attachment"
      end

      # verify the required parameter 'attachment' is set
      if api_client.config.client_side_validation && @attachment.nil?
        raise ArgumentError, "Missing the required parameter 'attachment' when calling CalendarApi.get_calendar_attachment"
      end

      # resource path
      local_var_path = '/email/Calendar/{name}/attachments/{attachment}'.sub('{' + 'name' + '}', @name.to_s).sub('{' + 'attachment' + '}', @attachment.to_s)

      # query parameters
      query_params = {}
      query_params[:folder] = @folder unless @folder.nil?
      query_params[:storage] = @storage unless @storage.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/get_calendar_list_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_calendar_list_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for get_calendar_list operation.
  class get_calendar_list_request_data < EmailRequest

    # Get iCalendar files list in folder on storage
    # @param [String] folder Path to folder in storage
    # @param [Integer] items_per_page Count of items on page
    # @param [Integer] page_number Page number
    # @param [String] storage Storage name
    def initialize(folder, items_per_page, page_number, storage = nil)
      @folder = folder
      @items_per_page = items_per_page
      @page_number = page_number
      @storage = storage
    end

    def to_http_info(api_client)
      # verify the required parameter 'folder' is set
      if api_client.config.client_side_validation && @folder.nil?
        raise ArgumentError, "Missing the required parameter 'folder' when calling CalendarApi.get_calendar_list"
      end

      # verify the required parameter 'items_per_page' is set
      if api_client.config.client_side_validation && @items_per_page.nil?
        raise ArgumentError, "Missing the required parameter 'items_per_page' when calling CalendarApi.get_calendar_list"
      end

      # verify the required parameter 'page_number' is set
      if api_client.config.client_side_validation && @page_number.nil?
        raise ArgumentError, "Missing the required parameter 'page_number' when calling CalendarApi.get_calendar_list"
      end

      # resource path
      local_var_path = '/email/Calendar'

      # query parameters
      query_params = {}
      query_params[:folder] = @folder
      query_params[:itemsPerPage] = @items_per_page
      query_params[:pageNumber] = @page_number
      query_params[:storage] = @storage unless @storage.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
#part: models/requests/update_calendar_properties_request_data.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="update_calendar_properties_request_data.rb">
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


require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for update_calendar_properties operation.
  class update_calendar_properties_request_data < EmailRequest

    # Update calendar file properties
    # @param [String] name iCalendar file name in storage
    # @param [HierarchicalObjectRequest] request Calendar properties update request
    def initialize(name, request)
      @name = name
      @request = request
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling CalendarApi.update_calendar_properties"
      end

      # verify the required parameter 'request' is set
      if api_client.config.client_side_validation && @request.nil?
        raise ArgumentError, "Missing the required parameter 'request' when calling CalendarApi.update_calendar_properties"
      end

      # resource path
      local_var_path = '/email/Calendar/{name}/properties'.sub('{' + 'name' + '}', @name.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(@request)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end

#part: models/requests/http_request.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="http_request.rb">
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


module AsposeEmailCloud

  # Http request data.
  class http_request

    # Initializes a new instance.
    # @param [String] resource_path Path to method endpoint.
    # @param [Hash] header_params Header parameters to be placed in the request header.
    # @param [Hash] query_params Query parameters in the url.
    # @param [Hash] form_params Request post form parameters, for `application/x-www-form-urlencoded`, `multipart/form-data`.
    # @param [Object] body Request body.
    # @param [Array] auth_names Auth Settings names for the request.
    def initialize(resource_path, header_params, query_params, form_params, body, auth_names)
      @resource_path = resource_path
      @query_params = query_params
      @header_params = header_params
      @form_params = form_params
      @body = body
      @auth_names = auth_names
    end

    attr_reader :resource_path, :header_params, :query_params, :form_params, :body, :auth_names
  end
end
#part: models/requests/email_request.rb
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="email_request.rb">
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


module AsposeEmailCloud

  # Base class for requests with basic operations
  class EmailRequest
    def to_http_info(config); end

    protected

    # Return Accept header based on an array of accepts provided.
    # @param [Array] accepts array for Accept
    # @return [String] the Accept header (e.g. application/json)
    def select_header_accept(accepts)
      return nil if accepts.nil? || accepts.empty?

      # use JSON when present, otherwise use all of the provided
      json_accept = accepts.find { |s| json_mime?(s) }
      json_accept || accepts.join(',')
    end

    # Return Content-Type header based on an array of content types provided.
    # @param [Array] content_types array for Content-Type
    # @return [String] the Content-Type header  (e.g. application/json)
    def select_header_content_type(content_types)
      # use application/json by default
      return 'application/json' if content_types.nil? || content_types.empty?

      # use JSON when present, otherwise use the first one
      json_content_type = content_types.find { |s| json_mime?(s) }
      json_content_type || content_types.first
    end

    private

    # Check if the given MIME is a JSON MIME.
    # JSON MIME examples:
    #   application/json
    #   application/json; charset=UTF8
    #   APPLICATION/JSON
    #   */*
    # @param [String] mime MIME
    # @return [Boolean] True if the MIME is application/json
    def json_mime?(mime)
      (mime == '*/*') || !(mime =~ %r{Application/.*json(?!p)(;.*)?}i).nil?
    end
  end
end


