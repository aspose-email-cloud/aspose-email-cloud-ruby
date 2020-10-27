#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="ai_bcr_parse_request.rb">
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
  # Request model for ai_bcr_parse operation.
  class AiBcrParseRequest < EmailRequest
    # File to parse
    # @return [File]
    attr_accessor :file
    # Comma-separated codes of countries.
    # @return [String]
    attr_accessor :countries
    # Comma-separated ISO-639 codes of languages (either 639-1 or 639-3; i.e. \&quot;it\&quot; or \&quot;ita\&quot; for Italian); it&#39;s \&quot;\&quot; by default.             
    # @return [String]
    attr_accessor :languages
    # Determines that image contains single VCard or more.
    # @return [BOOLEAN]
    attr_accessor :is_single

    # Parse images to vCard document models             
    # @param [File] file File to parse
    # @param [String] countries Comma-separated codes of countries.
    # @param [String] languages Comma-separated ISO-639 codes of languages (either 639-1 or 639-3; i.e. \&quot;it\&quot; or \&quot;ita\&quot; for Italian); it&#39;s \&quot;\&quot; by default.             
    # @param [BOOLEAN] is_single Determines that image contains single VCard or more.
    def initialize(file:, countries: nil, languages: nil, is_single: nil)
      self.file = file if file
      self.countries = countries if countries
      self.languages = languages if languages
      self.is_single = is_single if is_single
    end

    def to_http_info(api_client)
      # verify the required parameter 'file' is set
      if api_client.config.client_side_validation && self.file.nil?
        raise ArgumentError, "Missing the required parameter 'file' when calling AiBcrApi.parse"
      end
      # resource path
      local_var_path = '/email/AiBcr/parse'

      # query parameters
      query_params = {}
      query_params[:countries] = self.countries unless self.countries.nil?
      query_params[:languages] = self.languages unless self.languages.nil?
      query_params[:isSingle] = self.is_single unless self.is_single.nil?

      # form parameters
      form_params = {}
      form_params['File'] = self.file

      # http body (model)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : EmailRequest.select_header_content_type(['multipart/form-data'])

      AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                        header_params: header_params,
                                        query_params: query_params,
                                        form_params: form_params,
                                        auth_names: auth_names)
    end
  end
end



