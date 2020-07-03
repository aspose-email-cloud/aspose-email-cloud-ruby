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
      calendar = @api.convert_mapi_calendar_model_to_calendar_model(
        ConvertMapiCalendarModelToCalendarModelRequestData.new(mapi_calendar))
      expect(mapi_calendar.subject).to eq calendar.summary
      expect(mapi_calendar.location).to eq calendar.location
    end

    it 'Convert MAPI model to file', :pipeline do
      mapi_calendar = MapiCalendarSpec.mapi_calendar_dto
      ics_file = @api.convert_mapi_calendar_model_to_file(
        ConvertMapiCalendarModelToFileRequestData.new('Ics', mapi_calendar))
      ics_content = IO.read(ics_file)
      expect(ics_content).to include mapi_calendar.location
      mapi_calendar_converted = @api.get_calendar_file_as_mapi_model(
        GetCalendarFileAsMapiModelRequestData.new(ics_file))
      expect(mapi_calendar.location).to eq mapi_calendar_converted.location
    end

    it 'Check storage support', :pipeline do
      file_name = SecureRandom.uuid.to_s + '.msg'
      mapi_calendar = MapiCalendarSpec.mapi_calendar_dto
      @api.save_mapi_calendar_model(
        SaveMapiCalendarModelRequestData.new(
          file_name, 'Msg',
          StorageModelRqOfMapiCalendarDto.new(mapi_calendar, storage_folder)))
      mapi_calendar_from_storage = @api.get_mapi_calendar_model(
        GetMapiCalendarModelRequestData.new(file_name, @folder, @storage))
      expect(mapi_calendar.location).to eq mapi_calendar_from_storage.location
    end
  end

  # @return [MapiCalendarDto]
  def self.mapi_calendar_dto
    mapi_calendar = MapiCalendarDto.new
    mapi_calendar.attendees = MapiCalendarAttendeesDto.new([mapi_recipient_dto])
    mapi_calendar.client_intent = ['Manager']
    mapi_calendar.recurrence = recurrence_dto
    mapi_calendar.organizer = MapiElectronicAddressDto.new(nil, 'organizer@aspose.com')
    mapi_calendar.busy_status = 'Tentative'
    mapi_calendar.start_date = DateTime.now
    mapi_calendar.end_date = DateTime.now + 1
    mapi_calendar.location = 'Some location'
    mapi_calendar.body = 'Some description'
    mapi_calendar.body_type = 'PlainText'
    mapi_calendar.subject = 'Some summary'
    mapi_calendar
  end

  # @return [AsposeEmailCloud::MapiCalendarEventRecurrenceDto]
  def self.recurrence_dto
    recurrence = MapiCalendarEventRecurrenceDto.new
    recurrence_pattern = MapiCalendarDailyRecurrencePatternDto.new
    recurrence_pattern.occurrence_count = 10
    recurrence_pattern.week_start_day = 'Monday'
    recurrence.recurrence_pattern = recurrence_pattern
    recurrence
  end

  # @return [AsposeEmailCloud::MapiRecipientDto]
  def self.mapi_recipient_dto
    mapi_recipient = MapiRecipientDto.new
    mapi_recipient.address_type = 'SMTP'
    mapi_recipient.display_name = 'Attendee Name'
    mapi_recipient.email_address = 'attendee@aspose.com'
    mapi_recipient.recipient_type = 'MapiTo'
    mapi_recipient
  end
end
