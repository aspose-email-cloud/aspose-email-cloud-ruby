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
      mapi_file = @api.email.as_file(
        EmailAsFileRequest.new(format: 'Msg', value: email))
      eml_file = @api.email.convert(
        EmailConvertRequest.new(from_format: 'Msg', to_format: 'Eml', file: mapi_file))
      eml_content = IO.read(eml_file)
      expect(eml_content).to include email.from.address
      dto = @api.email.from_file(
        EmailFromFileRequest.new(format: 'Eml', file: eml_file))
      expect(dto.from.address).to eq email.from.address
    end

    it 'Convert model to MAPI model', :pipeline do
      email = EmailModelSpec.email_dto
      mapi_message = @api.email.as_mapi(email)
      expect(email.subject).to eq mapi_message.subject
    end
  end

  def self.email_dto
    EmailDto.new(
      from: MailAddress.new(address: 'from@aspose.com'),
      to: [MailAddress.new(address: 'to@aspose.com')],
      subject: 'Some subject',
      body: 'Some body',
      date: DateTime.now)
  end
end
