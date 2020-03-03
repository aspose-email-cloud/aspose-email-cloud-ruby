
#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="ai_name_match_request_data.rb">
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
  # Request model for ai_name_match operation.
  class AiNameMatchRequestData < EmailRequest

    # A name to match (required)
    # @return [String]
    attr_accessor :name
    # Another name to match (required)
    # @return [String]
    attr_accessor :other_name
    # An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)             
    # @return [String]
    attr_accessor :language
    # A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France             
    # @return [String]
    attr_accessor :location
    # A character encoding name
    # @return [String]
    attr_accessor :encoding
    # A writing system code; starts with the ISO-15924 script name
    # @return [String]
    attr_accessor :script
    # Name writing style. Enum, available values: Formal, Informal, Legal, Academic
    # @return [String]
    attr_accessor :style

    # Compare people&#39;s names. Uses options for comparing instructions             
    # @param [String] name A name to match (required)
    # @param [String] other_name Another name to match (required)
    # @param [String] language An ISO-639 code of the language; either 639-1 or 639-3 (e.g. \&quot;it\&quot; or \&quot;ita\&quot; for Italian)             
    # @param [String] location A geographic code such as an ISO-3166 two letter country code, for example \&quot;FR\&quot; for France             
    # @param [String] encoding A character encoding name
    # @param [String] script A writing system code; starts with the ISO-15924 script name
    # @param [String] style Name writing style. Enum, available values: Formal, Informal, Legal, Academic
    def initialize(name, other_name, language = nil, location = nil, encoding = nil, script = nil, style = nil)
      self.name = name if name
      self.other_name = other_name if other_name
      self.language = language if language
      self.location = location if location
      self.encoding = encoding if encoding
      self.script = script if script
      self.style = style if style
    end

    def to_http_info(api_client)
      # verify the required parameter 'name' is set
      if api_client.config.client_side_validation && self.name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling EmailApi.ai_name_match"
      end

      # verify the required parameter 'other_name' is set
      if api_client.config.client_side_validation && self.other_name.nil?
        raise ArgumentError, "Missing the required parameter 'other_name' when calling EmailApi.ai_name_match"
      end

      # resource path
      local_var_path = '/email/AiName/match'

      # query parameters
      query_params = {}
      query_params[:name] = self.name
      query_params[:otherName] = self.other_name
      query_params[:language] = self.language unless self.language.nil?
      query_params[:location] = self.location unless self.location.nil?
      query_params[:encoding] = self.encoding unless self.encoding.nil?
      query_params[:script] = self.script unless self.script.nil?
      query_params[:style] = self.style unless self.style.nil?

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
