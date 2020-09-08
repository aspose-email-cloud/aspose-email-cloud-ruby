# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module MapiMessageSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'MAPI message spec' do
    include_context 'spec base'
    it 'Model to EmailDto', :pipeline do
      mapi_message = MapiMessageSpec.mapi_message_dto
      email = @api.mapi.message.as_email_dto(mapi_message)
      expect(mapi_message.subject).to eq email.subject
      expect(mapi_message.body).to eq email.body
    end

    it 'Convert MAPI model to file', :pipeline do
      mapi_message = MapiMessageSpec.mapi_message_dto
      eml_file = @api.mapi.message.as_file(
        MapiMessageAsFileRequest.new(format: 'Eml', value: mapi_message))
      eml_content = IO.read(eml_file)
      expect(eml_content).to include mapi_message.subject
      mapi_message_converted = @api.mapi.message.from_file(
        MapiMessageFromFileRequest.new(format: 'Eml', file: eml_file))
      expect(mapi_message.subject).to eq mapi_message_converted.subject
      # Subject is also available as MapiPropertyDto:
      # There are different Property descriptors supported.
      # Some properties are known to the service and have MapiKnownPropertyDescriptor
      # So we can find subject property by known property name:
      subject_property = mapi_message_converted
                         .properties
                         .filter { |i| i.descriptor.discriminator == 'MapiKnownPropertyDescriptor' }
                         .find { |i| i.descriptor.name == 'TagSubject' }
      expect(mapi_message.subject).to eq subject_property.value
    end

    it 'Check storage support', :pipeline do
      file_name = SecureRandom.uuid.to_s + '.msg'
      mapi_message = MapiMessageSpec.mapi_message_dto
      @api.mapi.message.save(
        MapiMessageSaveRequest.new(
          storage_file: StorageFileLocation.new(
            storage: @storage,
            folder_path: @folder,
            file_name: file_name),
          value: mapi_message,
          format: 'Msg'))
      mapi_message_from_storage = @api.mapi.message.get(
        MapiMessageGetRequest.new(
          format: 'Msg',
          file_name: file_name,
          folder: @folder,
          storage: @storage))
      expect(mapi_message.subject).to eq mapi_message_from_storage.subject
    end
  end

  # @return [MapiMessageDto]
  def self.mapi_message_dto
    MapiMessageDto.new(
      sender_address_type: 'SMTP',
      sender_email_address: 'from@aspose.com',
      sender_smtp_address: 'from@aspose.com',
      sender_name: 'From Address',
      message_body: 'Some body',
      display_to: 'To Address',
      delivery_time: DateTime.now,
      flags: %w[MsgFlagRead MsgFlagUnsent MsgFlagHasAttach],
      recipients: [MapiRecipientDto.new(
        address_type: 'SMTP',
        display_name: 'To address',
        email_address: 'to@aspose.com',
        recipient_type: 'MapiTo')],
      attachments: [MapiAttachmentDto.new(
        data_base64: Base64.encode64('Some file text'),
        name: 'some-file.txt')],
      body: 'Some body',
      subject: 'Re: Some subject',
      body_type: 'PlainText')
  end
end
