#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="contact_convert_request.rb">
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

require_relative './email_request'
require_relative './http_request'

module AsposeEmailCloud
  # Request model for contact_convert operation.
  class ContactConvertRequest < EmailRequest
    # File format to convert to Enum, available values: VCard, WebDav, Msg
    # @return [String]
    attr_accessor :to_format
    # File format to convert from Enum, available values: VCard, WebDav, Msg
    # @return [String]
    attr_accessor :from_format
    # File to convert
    # @return [File]
    attr_accessor :file

    # Converts contact document to specified format and returns as file             
    # @param [String] to_format File format to convert to Enum, available values: VCard, WebDav, Msg
    # @param [String] from_format File format to convert from Enum, available values: VCard, WebDav, Msg
    # @param [File] file File to convert
    def initialize(to_format:, from_format:, file:)
      self.to_format = to_format if to_format
      self.from_format = from_format if from_format
      self.file = file if file
    end

    def to_http_info(api_client)
      # verify the required parameter 'to_format' is set
      if api_client.config.client_side_validation && self.to_format.nil?
        raise ArgumentError, "Missing the required parameter 'to_format' when calling ContactApi.convert"
      end
      # verify the required parameter 'from_format' is set
      if api_client.config.client_side_validation && self.from_format.nil?
        raise ArgumentError, "Missing the required parameter 'from_format' when calling ContactApi.convert"
      end
      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && self.file.nil?
        raise ArgumentError, "Missing the required parameter 'file' when calling ContactApi.convert"
      end
      # resource path
      local_var_path = '/email/Contact/convert'

      # query parameters
      query_params = {}
      query_params[:toFormat] = self.to_format
      query_params[:fromFormat] = self.from_format

      # form parameters
      form_params = {}
      form_params['File'] = self.file

      # http body (model)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['multipart/form-data'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['multipart/form-data'])

      AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                        header_params: header_params,
                                        query_params: query_params,
                                        form_params: form_params,
                                        auth_names: auth_names)
    end
  end
end
