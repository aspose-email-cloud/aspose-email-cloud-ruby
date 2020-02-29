
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_email_as_file_request_data.rb">
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
  # Request model for get_email_as_file operation.
  class GetEmailAsFileRequestData < EmailRequest

    # Email document file name
    # @return [String]
    attr_accessor :file_name
    # File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html
    # @return [String]
    attr_accessor :format
    # Storage name
    # @return [String]
    attr_accessor :storage
    # Path to folder in storage
    # @return [String]
    attr_accessor :folder

    # Converts email document from storage to specified format and returns as file             
    # @param [String] file_name Email document file name
    # @param [String] format File format Enum, available values: Eml, Msg, MsgUnicode, Mhtml, Html
    # @param [String] storage Storage name
    # @param [String] folder Path to folder in storage
    def initialize(file_name, format, storage = nil, folder = nil)
      self.file_name = file_name if file_name
      self.format = format if format
      self.storage = storage if storage
      self.folder = folder if folder
    end

    def to_http_info(api_client)
      # verify the required parameter 'file_name' is set
      if api_client.config.client_side_validation && self.file_name.nil?
        raise ArgumentError, "Missing the required parameter 'file_name' when calling EmailApi.get_email_as_file"
      end

      # verify the required parameter 'format' is set
      if api_client.config.client_side_validation && self.format.nil?
        raise ArgumentError, "Missing the required parameter 'format' when calling EmailApi.get_email_as_file"
      end

      # resource path
      local_var_path = '/email/{fileName}/as-file/{format}'.sub('{' + 'fileName' + '}', self.file_name.to_s).sub('{' + 'format' + '}', self.format.to_s)

      # query parameters
      query_params = {}
      query_params[:storage] = self.storage unless self.storage.nil?
      query_params[:folder] = self.folder unless self.folder.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['multipart/form-data'])
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