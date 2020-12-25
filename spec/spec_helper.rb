# frozen_string_literal: true

require_relative '../lib/aspose-email-cloud'
require 'securerandom'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.formatter = :documentation
end

include AsposeEmailCloud

RSpec.shared_context 'spec base', shared_context: :metadata do
  before(:all) do
    api_base_url = ENV['apiBaseUrl']
    @api = EmailCloud.new(ENV['clientSecret'], ENV['clientId'], api_base_url)
    auth_url = ENV['authUrl']
    if auth_url
      @api.api_invoker.api_client.config.scheme = 'http' if api_base_url.include? 'http:'
      @api.api_invoker.api_client.config.auth_url = auth_url
    end
    @api.api_invoker.api_client.config.logger.level = 'warn'
    @folder = SecureRandom.uuid.to_s
    @storage = 'First Storage'
    @api.cloud_storage.folder.create_folder(
      CreateFolderRequest.new(path: @folder, storage_name: @storage))
  end

  after(:all) do
    @api.cloud_storage.folder.delete_folder(
      DeleteFolderRequest.new(path: @folder, storage_name: @storage, recursive: true))
  end

  def storage_folder
    StorageFolderLocation.new(storage: @storage, folder_path: @folder)
  end
end
