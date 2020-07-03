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
      from = 'from@aspose.com'
      email_dto = EmailDto.new
      email_dto.from = MailAddress.new(nil, from)
      email_dto.to = [MailAddress.new(nil, 'to@aspose.com')]
      email_dto.subject = 'Some subject'
      email_dto.body = 'Some body'
      email_dto.date = DateTime.now
      mapi_file = @api.convert_email_model_to_file(
        ConvertEmailModelToFileRequestData.new('Msg', email_dto))
      eml_file = @api.convert_email(
        ConvertEmailRequestData.new('Eml', mapi_file))
      eml_content = IO.read(eml_file)
      expect(eml_content).to include from
      dto = @api.get_email_file_as_model(
        GetEmailFileAsModelRequestData.new(eml_file))
      expect(dto.from.address).to eq from
    end
  end
end
