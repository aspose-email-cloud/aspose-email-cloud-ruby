# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module CalendarSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'Calendar spec' do
    include_context 'spec base'
    # This test checks that BaseObject.Type field filled automatically by SDK
    # and properly used in serialization and deserialization
    it 'HierarchicalObject serialization and deserialization test', :pipeline do
      file_name = create_calendar
      calendar = @api.get_calendar(GetCalendarRequestData.new(file_name, @folder, @storage))
      expect(calendar.internal_properties.count { |item| item.type == 'PrimitiveObject' })
        .to be >= 3
      primitive = calendar.internal_properties.find { |item| item.type == 'PrimitiveObject' }
      expect(primitive).to be_a(PrimitiveObject)
      expect(primitive.value).not_to be_nil
    end

    # Checks that SDK and Backend do not change DateTime during processing.
    # In most cases developer should carefully serialize and deserialize DateTime
    it 'Test DateTime serialization and deserialization', :pipeline do
      start_date = DateTime.now + 2
      # remove microseconds
      start_date -= start_date.sec_fraction / (24 * 60 * 60)
      start_date = start_date.new_offset(0) # offset will be lost anyway
      calendar_file = create_calendar(start_date)
      calendar = @api.get_calendar(GetCalendarRequestData.new(calendar_file, @folder, @storage))
      start_date_property = calendar.internal_properties.find { |item| item.name == 'STARTDATE' }
      fact_start_date = DateTime.strptime(start_date_property.value, '%Y-%m-%d %H:%M:%SZ')
      expect(fact_start_date).to eq(start_date)
    end

    it 'Create calendar email', :pipeline do
      calendar = CalendarDto.new
      calendar.attendees = [MailAddress.new('Attendee Name', 'attendee@aspose.com', 'Accepted')]
      calendar.description = 'Some description'
      calendar.summary = 'Some summary'
      calendar.organizer = MailAddress.new('Organizer Name', 'organizer@aspose.com', 'Accepted')
      calendar.start_date = DateTime.now + 1
      calendar.end_date = DateTime.now + 2
      calendar.location = 'Some location'

      calendar_file = SecureRandom.uuid.to_s + '.ics'
      @api.save_calendar_model(
        SaveCalendarModelRequestData.new(
          calendar_file,
          StorageModelRqOfCalendarDto.new(calendar, storage_folder)))

      exist_result = @api.object_exists(
        ObjectExistsRequestData.new("#{@folder}/#{calendar_file}", @storage))
      expect(exist_result.exists).to be true

      alternate = @api.convert_calendar_model_to_alternate(
        ConvertCalendarModelToAlternateRequestData.new(
          CalendarDtoAlternateRq.new(calendar, 'Create')))

      email = EmailDto.new
      email.alternate_views = [alternate]
      email.from = MailAddress.new('From Name', 'cloud.em@yandex.ru')
      email.to = [MailAddress.new('To Name', 'cloud.em@yandex.ru')]
      email.subject = 'Some subject'
      email.body = 'Some body'

      email_file = "#{SecureRandom.uuid}.eml"
      @api.save_email_model(
        SaveEmailModelRequestData.new(
          'Eml', email_file,
          StorageModelRqOfEmailDto.new(
            email, storage_folder)))

      downloaded = @api.download_file(
        DownloadFileRequestData.new("#{@folder}/#{email_file}", @storage))
      content = IO.read(downloaded)
      expect(content).to include('cloud.em@yandex.ru')
    end

    it 'Check convert calendar', :pipeline do
      location = 'Some location'
      # Create DTO with specified location:
      calendar_dto = CalendarDto.new
      calendar_dto.location = location
      calendar_dto.summary = 'Some summary'
      calendar_dto.description = 'Some description'
      calendar_dto.start_date = DateTime.now
      calendar_dto.end_date = DateTime.now + 1
      calendar_dto.organizer = MailAddress.new nil, 'organizer@aspose.com'
      calendar_dto.attendees = [MailAddress.new(nil, 'attendee@aspose.com')]
      # We can convert this DTO to a MAPI or ICS file:
      mapi_file = @api.convert_calendar_model_to_file(
        ConvertCalendarModelToFileRequestData.new('Msg', calendar_dto))
      # Let's convert this file to an ICS format:
      ics_file = @api.convert_calendar(
        ConvertCalendarRequestData.new('Ics', mapi_file))
      # ICS is a text format. We can read file content to a string and check that it
      # contains specified location as a substring:
      ics_content = IO.read(ics_file)
      expect(ics_content).to include location
      # We can also convert the file back to a CalendarDto object:
      dto = @api.get_calendar_file_as_model(
        GetCalendarFileAsModelRequestData.new(ics_file))
      expect(dto.location).to eq location
    end
  end
end
