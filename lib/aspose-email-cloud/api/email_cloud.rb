# frozen_string_literal: true

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

module AsposeEmailCloud
  # Aspose.Email Cloud API.
  class EmailCloud
    attr_reader :api_invoker

    
    # iCalendar document operations.
    attr_reader :calendar
    
    # Contact document operations. Supported formats: VCard, MSG, WebDav
    attr_reader :contact
    
    # Email document (*.eml) operations.
    attr_reader :email
    
    # Checks if an email is a disposable one
    attr_reader :disposable_email
    
    # Email server configuration discovery.
    attr_reader :email_config
    

    
    # MAPI operations.
    attr_reader :mapi
    
    # Builtin Email client operations.
    attr_reader :client
    
    # AI powered operations.
    attr_reader :ai
    
    # Cloud file storage operations.
    attr_reader :cloud_storage
    

    # Initializes a new instance of the EmailApi class.
    # @param [String] client_secret Key to access the server.
    # @param [String] client_id ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    def initialize(client_secret = nil, client_id = nil, base_url = 'api.aspose.cloud', api_version = 'v4.0', debug = false)
      api_client = ApiClient.new(client_secret, client_id, base_url, api_version, debug)
      @api_invoker = ApiInvoker.new(api_client)
    
      @calendar = CalendarApi.new(@api_invoker)
    
      @contact = ContactApi.new(@api_invoker)
    
      @email = EmailApi.new(@api_invoker)
    
      @disposable_email = DisposableEmailApi.new(@api_invoker)
    
      @email_config = EmailConfigApi.new(@api_invoker)
    
    
      @mapi = MapiGroup.new(@api_invoker)
    
      @client = ClientGroup.new(@api_invoker)
    
      @ai = AiGroup.new(@api_invoker)
    
      @cloud_storage = CloudStorageGroup.new(@api_invoker)
    
    end

  end
end