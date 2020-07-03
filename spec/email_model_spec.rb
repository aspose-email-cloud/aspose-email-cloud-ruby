# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module EmailModelSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'Email model spec' do
    include_context 'spec base'
    it 'Check convert email', :pipeline do
      email = EmailModelSpec.email_dto
      mapi_file = @api.convert_email_model_to_file(
        ConvertEmailModelToFileRequestData.new('Msg', email))
      eml_file = @api.convert_email(
        ConvertEmailRequestData.new('Eml', mapi_file))
      eml_content = IO.read(eml_file)
      expect(eml_content).to include email.from.address
      dto = @api.get_email_file_as_model(
        GetEmailFileAsModelRequestData.new(eml_file))
      expect(dto.from.address).to eq email.from.address
    end

    it 'Convert model to MAPI model', :pipeline do
      email = EmailModelSpec.email_dto
      mapi_message = @api.convert_email_model_to_mapi_model(
        ConvertEmailModelToMapiModelRequestData.new(email))
      expect(email.subject).to eq mapi_message.subject
    end
  end

  def self.email_dto
    email = EmailDto.new
    email.from = MailAddress.new(nil, 'from@aspose.com')
    email.to = [MailAddress.new(nil, 'to@aspose.com')]
    email.subject = 'Some subject'
    email.body = 'Some body'
    email.date = DateTime.now
    email
  end
end
