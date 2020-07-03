# frozen_string_literal: true

require_relative '../lib/aspose-email-cloud'
require 'securerandom'

module SpecHelper
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
      @api = EmailApi.new(ENV['appKey'], ENV['appSid'], api_base_url)
      auth_url = ENV['authUrl']
      if auth_url
        @api.api_client.config.scheme = 'http' if api_base_url.include? 'http:'
        @api.api_client.config.auth_url = auth_url
      end
      @folder = SecureRandom.uuid.to_s
      @storage = 'First Storage'
      @api.create_folder(CreateFolderRequestData.new(@folder, @storage))
    end

    after(:all) do
      @api.delete_folder(DeleteFolderRequestData.new(@folder, @storage, true))
    end

    def create_calendar(start_date = nil)
      file_name = SecureRandom.uuid.to_s + '.ics'
      start_date = start_date.nil? ? DateTime.now + 1 : start_date
      end_date = start_date + 1
      @api.create_calendar(
        CreateCalendarRequestData.new(
          file_name,
          HierarchicalObjectRequest.new(
            calendar_hierarchical_object(start_date, end_date),
            storage_folder)))
      file_name
    end

    def calendar_hierarchical_object(start_date, end_date)
      HierarchicalObject.new(
        'CALENDAR', nil, [
          PrimitiveObject.new('LOCATION', nil, 'location'),
          hierarchical_date(start_date, 'STARTDATE'),
          hierarchical_date(end_date, 'ENDDATE'),
          hierarchical_address('organizer@aspose.com', 'Piu Man', 'ORGANIZER'),
          HierarchicalObject.new(
            'ATTENDEES', nil, [
              indexed_hierarchical_address(
                'attendee@aspose.com', 'Attendee Name', 0, 'ATTENDEE')])])
    end

    def hierarchical_date(date, property_name)
      PrimitiveObject.new(property_name, nil,
                          date.strftime('%Y-%m-%d %H:%M:%SZ'))
    end

    def hierarchical_address(address, display_name, property_name)
      HierarchicalObject.new(
        property_name, nil,
        hierarchical_email_address(address, display_name))
    end

    def indexed_hierarchical_address(address, display_name, index, property_name)
      IndexedHierarchicalObject.new(
        property_name, nil, index,
        hierarchical_email_address(address, display_name))
    end

    def hierarchical_email_address(address, display_name)
      [PrimitiveObject.new('ADDRESS', nil, address),
       PrimitiveObject.new('DISPLAYNAME', nil, display_name)]
    end

    def storage_folder
      StorageFolderLocation.new(@storage, @folder)
    end
  end
end
