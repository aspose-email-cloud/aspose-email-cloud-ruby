#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="ai_name_parse_email_address_request.rb">
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
  # Request model for ai_name_parse_email_address operation.
  class AiNameParseEmailAddressRequest < EmailRequest
    # Email address to parse.
    # @return [String]
    attr_accessor :email_address
    # An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).             
    # @return [String]
    attr_accessor :language
    # A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.             
    # @return [String]
    attr_accessor :location
    # A character encoding name.
    # @return [String]
    attr_accessor :encoding
    # A writing system code; starts with the ISO-15924 script name.
    # @return [String]
    attr_accessor :script
    # Name writing style. Enum, available values: Formal, Informal, Legal, Academic
    # @return [String]
    attr_accessor :style

    # Parse person&#39;s name out of an email address.             
    # @param [String] email_address Email address to parse.
    # @param [String] language An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian).             
    # @param [String] location A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France.             
    # @param [String] encoding A character encoding name.
    # @param [String] script A writing system code; starts with the ISO-15924 script name.
    # @param [String] style Name writing style. Enum, available values: Formal, Informal, Legal, Academic
    def initialize(email_address:, language: nil, location: nil, encoding: nil, script: nil, style: nil)
      self.email_address = email_address if email_address
      self.language = language if language
      self.location = location if location
      self.encoding = encoding if encoding
      self.script = script if script
      self.style = style if style
    end

    def to_http_info(api_client)
      # verify the required parameter 'email_address' is set
      if api_client.config.client_side_validation && self.email_address.nil?
        raise ArgumentError, "Missing the required parameter 'email_address' when calling AiNameApi.parse_email_address"
      end
      # resource path
      local_var_path = '/email/AiName/parse-email-address'

      # query parameters
      query_params = {}
      query_params[:emailAddress] = self.email_address
      query_params[:language] = self.language unless self.language.nil?
      query_params[:location] = self.location unless self.location.nil?
      query_params[:encoding] = self.encoding unless self.encoding.nil?
      query_params[:script] = self.script unless self.script.nil?
      query_params[:style] = self.style unless self.style.nil?

      # form parameters
      form_params = {}

      # http body (model)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = EmailRequest.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : EmailRequest.select_header_content_type(['application/json'])

      AsposeEmailCloud::HttpRequest.new(resource_path: local_var_path,
                                        header_params: header_params,
                                        query_params: query_params,
                                        form_params: form_params,
                                        auth_names: auth_names)
    end
  end
end



