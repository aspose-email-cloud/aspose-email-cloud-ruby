
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="delete_contact_property_request_data.rb">
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
  # Request model for delete_contact_property operation.
  class DeleteContactPropertyRequestData < EmailRequest

    # Contact document format Enum, available values: VCard, WebDav, Msg
    # @return [String]
    attr_accessor :format
    # Contact document file name
    # @return [String]
    attr_accessor :name
    # Indexed property name
    # @return [String]
    attr_accessor :member_name
    # Property index
    # @return [Integer]
    attr_accessor :index
    # Calendar document location in storage information
    # @return [StorageFolderLocation]
    attr_accessor :folder

    # Delete property from indexed property list             
    # @param [String] format Contact document format Enum, available values: VCard, WebDav, Msg
    # @param [String] name Contact document file name
    # @param [String] member_name Indexed property name
    # @param [Integer] index Property index
    # @param [StorageFolderLocation] folder Calendar document location in storage information
    def initialize(format, name, member_name, index, folder)
      self.format = format if format
      self.name = name if name
      self.member_name = member_name if member_name
      self.index = index if index
      self.folder = folder if folder
    end

    def to_http_info(api_client)
      # verify the required parameter 'format' is set
      if api_client.config.client_side_validation && self.format.nil?
        raise ArgumentError, "Missing the required parameter 'format' when calling EmailApi.delete_contact_property"
      end

      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && self.name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling EmailApi.delete_contact_property"
      end

      # verify the required parameter 'member_name' is set
      if api_client.config.client_side_validation && self.member_name.nil?
        raise ArgumentError, "Missing the required parameter 'member_name' when calling EmailApi.delete_contact_property"
      end

      # verify the required parameter 'index' is set
      if api_client.config.client_side_validation && self.index.nil?
        raise ArgumentError, "Missing the required parameter 'index' when calling EmailApi.delete_contact_property"
      end

      # verify the required parameter 'folder' is set
      if api_client.config.client_side_validation && self.folder.nil?
        raise ArgumentError, "Missing the required parameter 'folder' when calling EmailApi.delete_contact_property"
      end

      # resource path
      local_var_path = '/email/Contact/{format}/{name}/properties/{memberName}/{index}'.sub('{' + 'format' + '}', self.format.to_s).sub('{' + 'name' + '}', self.name.to_s).sub('{' + 'memberName' + '}', self.member_name.to_s).sub('{' + 'index' + '}', self.index.to_s)

      # query parameters
      query_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = api_client.object_to_http_body(self.folder)
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
