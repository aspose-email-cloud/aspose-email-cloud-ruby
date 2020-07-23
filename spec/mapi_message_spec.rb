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
      email = @api.convert_mapi_message_model_to_email_model(
        ConvertMapiMessageModelToEmailModelRequestData.new(mapi_message))
      expect(mapi_message.subject).to eq email.subject
      expect(mapi_message.body).to eq email.body
    end

    it 'Convert MAPI model to file', :pipeline do
      mapi_message = MapiMessageSpec.mapi_message_dto
      eml_file = @api.convert_mapi_message_model_to_file(
        ConvertMapiMessageModelToFileRequestData.new('Eml', mapi_message))
      eml_content = IO.read(eml_file)
      expect(eml_content).to include mapi_message.subject
      mapi_message_converted = @api.get_email_file_as_mapi_model(
        GetEmailFileAsMapiModelRequestData.new('Eml', eml_file))
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
      @api.save_mapi_message_model(
        SaveMapiMessageModelRequestData.new(
          'Msg', file_name,
          StorageModelRqOfMapiMessageDto.new(mapi_message, storage_folder)))
      mapi_message_from_storage = @api.get_mapi_message_model(
        GetMapiMessageModelRequestData.new('Msg', file_name, @folder, @storage))
      expect(mapi_message.subject).to eq mapi_message_from_storage.subject
    end
  end

  # @return [MapiMessageDto]
  def self.mapi_message_dto
    mapi_message_dto = MapiMessageDto.new
    mapi_message_dto.sender_address_type = 'SMTP'
    mapi_message_dto.sender_email_address = 'from@aspose.com'
    mapi_message_dto.sender_smtp_address = 'from@aspose.com'
    mapi_message_dto.sender_name = 'From Address'
    mapi_message_dto.message_body = 'Some body'
    mapi_message_dto.display_to = 'To Address'
    mapi_message_dto.delivery_time = DateTime.now
    mapi_message_dto.flags = %w[MsgFlagRead MsgFlagUnsent MsgFlagHasAttach]
    mapi_message_dto.recipients = [mapi_recipient_dto]
    mapi_message_dto.attachments = [mapi_attachment_dto]
    mapi_message_dto.body = 'Some body'
    mapi_message_dto.subject = 'Re: Some subject'
    mapi_message_dto.body_type = 'PlainText'
    mapi_message_dto
  end

  # @return [AsposeEmailCloud::MapiRecipientDto]
  def self.mapi_recipient_dto
    recipient_dto = MapiRecipientDto.new
    recipient_dto.address_type = 'SMTP'
    recipient_dto.display_name = 'To address'
    recipient_dto.email_address = 'to@aspose.com'
    recipient_dto.recipient_type = 'MapiTo'
    recipient_dto
  end

  # @return [AsposeEmailCloud::MapiAttachmentDto]
  def self.mapi_attachment_dto
    attachment = MapiAttachmentDto.new
    attachment.data_base64 = Base64.encode64('Some file text')
    attachment.name = 'some-file.txt'
    attachment
  end
end
