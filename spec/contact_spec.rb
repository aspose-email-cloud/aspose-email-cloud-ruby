# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module ContactSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'Contact spec' do
    include_context 'spec base'

    it 'Create contact model', :pipeline do
      contact = ContactSpec.contact_dto
      contact_file = "#{SecureRandom.uuid}.vcf"
      @api.contact.save(
        ContactSaveRequest.new(
          storage_file: StorageFileLocation.new(
            storage: @storage,
            folder_path: @folder,
            file_name: contact_file),
          value: contact,
          format: 'VCard'))
      exist_result = @api.cloud_storage.storage.object_exists(
        ObjectExistsRequest.new(path: "#{@folder}/#{contact_file}", storage_name: @storage))
      expect(exist_result.exists).to be true
    end

    it 'Check convert contact', :pipeline do
      contact = ContactSpec.contact_dto
      mapi_file = @api.contact.as_file(
        ContactAsFileRequest.new(format: 'Msg', value: contact))
      vcard_file = @api.contact.convert(
        ContactConvertRequest.new(to_format: 'VCard', from_format: 'Msg', file: mapi_file))
      vcard_content = IO.read(vcard_file)
      expect(vcard_content).to include contact.surname
      dto = @api.contact.from_file(
        ContactFromFileRequest.new(format: 'VCard', file: vcard_file))
      expect(dto.surname).to eq contact.surname
    end

    it 'Convert model to MAPI model', :pipeline do
      contact = ContactSpec.contact_dto
      mapi_contact = @api.contact.as_mapi(contact)
      expect(contact.surname).to eq mapi_contact.name_info.surname
    end
  end

  # @return [ContactDto]
  def self.contact_dto
    ContactDto.new(
      surname: 'Cane',
      given_name: 'John',
      gender: 'Male',
      email_addresses: [EmailAddress.new(address: 'address@aspose.com')],
      phone_numbers: [PhoneNumber.new(number: '+4734534643')])
  end
end
