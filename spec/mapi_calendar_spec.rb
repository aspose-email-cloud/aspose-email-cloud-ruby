# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module MapiCalendarSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'MAPI calendar spec' do
    include_context 'spec base'
    it 'Model to CalendarDto', :pipeline do
      mapi_calendar = MapiCalendarSpec.mapi_calendar_dto
      calendar = @api.mapi.calendar.as_calendar_dto(mapi_calendar)
      expect(mapi_calendar.subject).to eq calendar.summary
      expect(mapi_calendar.location).to eq calendar.location
    end

    it 'Convert MAPI model to file', :pipeline do
      mapi_calendar = MapiCalendarSpec.mapi_calendar_dto
      ics_file = @api.mapi.calendar.as_file(
        MapiCalendarAsFileRequest.new(format: 'Ics', value: mapi_calendar))
      ics_content = IO.read(ics_file)
      expect(ics_content).to include mapi_calendar.location
      mapi_calendar_converted = @api.mapi.calendar.from_file(
        MapiCalendarFromFileRequest.new(file: ics_file))
      expect(mapi_calendar.location).to eq mapi_calendar_converted.location
    end

    it 'Check storage support', :pipeline do
      file_name = SecureRandom.uuid.to_s + '.msg'
      mapi_calendar = MapiCalendarSpec.mapi_calendar_dto
      @api.mapi.calendar.save(
        MapiCalendarSaveRequest.new(
          storage_file: StorageFileLocation.new(
            storage: @storage,
            folder_path: @folder,
            file_name: file_name),
          value: mapi_calendar,
          format: 'Msg'))
      mapi_calendar_from_storage = @api.mapi.calendar.get(
        MapiCalendarGetRequest.new(file_name: file_name, folder: @folder, storage: @storage))
      expect(mapi_calendar.location).to eq mapi_calendar_from_storage.location
    end
  end

  # @return [MapiCalendarDto]
  def self.mapi_calendar_dto
    MapiCalendarDto.new(
      attendees: MapiCalendarAttendeesDto.new(appointment_recipients: [MapiRecipientDto.new(
        address_type: 'SMTP',
        display_name: 'Attendee Name',
        email_address: 'attendee@aspose.com',
        recipient_type: 'MapiTo')]),
      client_intent: ['Manager'],
      recurrence: MapiCalendarEventRecurrenceDto.new(
        recurrence_pattern: MapiCalendarDailyRecurrencePatternDto.new(
          occurrence_count: 10,
          week_start_day: 'Monday'
        )),
      organizer: MapiElectronicAddressDto.new(email_address: 'organizer@aspose.com'),
      busy_status: 'Tentative',
      start_date: DateTime.now,
      end_date: DateTime.now,
      location: 'Some location',
      body: 'Some description',
      body_type: 'PlainText',
      subject: 'Some summary')
  end
end
