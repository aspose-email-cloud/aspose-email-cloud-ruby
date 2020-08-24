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

    it 'Create calendar email', :pipeline do
      calendar = CalendarSpec.calendar_dto
      calendar_file = SecureRandom.uuid.to_s + '.ics'
      @api.calendar.save(
        CalendarSaveRequest.new(
          storage_file: StorageFileLocation.new(
            storage: @storage,
            folder_path: @folder,
            file_name: calendar_file),
          value: calendar,
          format: 'Ics'))

      exist_result = @api.cloud_storage.storage.object_exists(
        ObjectExistsRequest.new(path: "#{@folder}/#{calendar_file}", storage_name: @storage))
      expect(exist_result.exists).to be true

      alternate = @api.calendar.as_alternate(
        CalendarAsAlternateRequest.new(
          value: calendar,
          action: 'Create'))

      email = EmailDto.new(
        alternate_views: [alternate],
        from: MailAddress.new(display_name: 'From Name', address: 'cloud.em@yandex.ru'),
        to: [MailAddress.new(display_name: 'To Name', address: 'cloud.em@yandex.ru')],
        subject: 'Some subject',
        body: 'Some body')

      email_file = "#{SecureRandom.uuid}.eml"
      @api.email.save(
        EmailSaveRequest.new(
          storage_file: StorageFileLocation.new(
            storage: @storage,
            folder_path: @folder,
            file_name: email_file),
          value: email,
          format: 'Eml'))

      downloaded = @api.cloud_storage.file.download_file(
        DownloadFileRequest.new(path: "#{@folder}/#{email_file}", storage_name: @storage))
      content = IO.read(downloaded)
      expect(content).to include('cloud.em@yandex.ru')
    end

    it 'Check convert calendar', :pipeline do
      # Create DTO with specified location:
      # We can convert this DTO to a MAPI or ICS file:
      calendar = CalendarSpec.calendar_dto
      mapi_file = @api.calendar.as_file(
        CalendarAsFileRequest.new(format: 'Msg', value: calendar))
      # Let's convert this file to an ICS format:
      ics_file = @api.calendar.convert(
        CalendarConvertRequest.new(format: 'Ics', file: mapi_file))
      # ICS is a text format. We can read file content to a string and check that it
      # contains specified location as a substring:
      ics_content = IO.read(ics_file)
      expect(ics_content).to include calendar.location
      # We can also convert the file back to a CalendarDto object:
      dto = @api.calendar.from_file(
        CalendarFromFileRequest.new(file: ics_file))
      expect(dto.location).to eq calendar.location
    end

    it 'Convert model to MAPI model', :pipeline do
      calendar = CalendarSpec.calendar_dto
      mapi_calendar = @api.calendar.as_mapi(calendar)
      expect(calendar.location).to eq mapi_calendar.location
      expect('MapiCalendarDailyRecurrencePatternDto')
        .to eq mapi_calendar.recurrence.recurrence_pattern.discriminator
    end
  end

  # @return [CalendarDto]
  def self.calendar_dto
    CalendarDto.new(
      location: 'Some location',
      summary: 'Some summary',
      description: 'Some description',
      start_date: DateTime.now,
      end_date: DateTime.now,
      organizer: MailAddress.new(address: 'organizer@aspose.com'),
      attendees: [MailAddress.new(address: 'attendee@aspose.com')],
      # TODO: Add model inheritance support
      recurrence: DailyRecurrencePatternDto.new(occurs: 10, week_start: 'Monday'))
  end
end
