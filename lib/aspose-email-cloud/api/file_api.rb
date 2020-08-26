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
  # FileApi operations.
  class FileApi
    attr_reader :api_invoker

    # Initializes a new instance of the FileApi class.
    # @param [String] app_key Key to access the server.
    # @param [String] app_sid ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    # def initialize(app_key = nil, app_sid = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v4.0', debug = false)
    #   @api_client = ApiClient.new(app_key, app_sid, base_url, api_version, debug)
    # end

    # Initializes a new instance of the FileApi class.
    # @param [ApiInvoker] api_invoker
    def initialize(api_invoker)
      @api_invoker = api_invoker
    end

    # @param [CopyFileRequest] request Request object.
    # @return [nil]
    def copy_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :PUT, nil)
      nil
    end

    # @param [DeleteFileRequest] request Request object.
    # @return [nil]
    def delete_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :DELETE, nil)
      nil
    end

    # @param [DownloadFileRequest] request Request object.
    # @return [File]
    def download_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :GET, 'File')
    end

    # @param [MoveFileRequest] request Request object.
    # @return [nil]
    def move_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :PUT, nil)
      nil
    end

    # @param [UploadFileRequest] request Request object.
    # @return [FilesUploadResult]
    def upload_file(request)
      http_request = request.to_http_info(@api_invoker.api_client)
      @api_invoker.make_request(http_request, :PUT, 'FilesUploadResult')
    end
  end
end
