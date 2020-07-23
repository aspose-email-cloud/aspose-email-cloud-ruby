# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module MapiContactSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'MAPI contact spec' do
    include_context 'spec base'
    it 'Model to ContactDto', :pipeline do
      mapi_contact = MapiContactSpec.mapi_contact_dto
      contact = @api.convert_mapi_contact_model_to_contact_model(
        ConvertMapiContactModelToContactModelRequestData.new(mapi_contact))
      expect(mapi_contact.name_info.given_name).to eq contact.given_name
      expect(mapi_contact.name_info.surname).to eq contact.surname
    end

    it 'Convert MAPI model to file', :pipeline do
      mapi_contact = MapiContactSpec.mapi_contact_dto
      vcard_file = @api.convert_mapi_contact_model_to_file(
        ConvertMapiContactModelToFileRequestData.new('VCard', mapi_contact))
      vcard_content = IO.read(vcard_file)
      expect(vcard_content).to include mapi_contact.name_info.given_name
      mapi_contact_converted = @api.get_contact_file_as_mapi_model(
        GetContactFileAsMapiModelRequestData.new('VCard', vcard_file))
      expect(mapi_contact.name_info.surname).to eq mapi_contact_converted.name_info.surname
    end

    it 'Check storage support', :pipeline do
      file_name = SecureRandom.uuid.to_s + '.msg'
      mapi_contact = MapiContactSpec.mapi_contact_dto
      @api.save_mapi_contact_model(
        SaveMapiContactModelRequestData.new(
          'Msg', file_name,
          StorageModelRqOfMapiContactDto.new(mapi_contact, storage_folder)))
      mapi_contact_from_storage = @api.get_mapi_contact_model(
        GetMapiContactModelRequestData.new('Msg', file_name, @folder, @storage))
      expect(mapi_contact.name_info.surname).to eq mapi_contact_from_storage.name_info.surname
    end
  end

  # @return [MapiContactDto]
  def self.mapi_contact_dto
    mapi_contact = MapiContactDto.new
    mapi_contact.electronic_addresses = electronic_addresses_dto
    mapi_contact.name_info = name_info_dto
    mapi_contact.personal_info = MapiContactPersonalInfoPropertySetDto.new
    mapi_contact.personal_info.business_home_page = 'www.aspose.com'
    mapi_contact.professional_info = MapiContactProfessionalPropertySetDto.new
    mapi_contact.professional_info.profession = 'GENERAL DIRECTOR'
    mapi_contact.telephones = MapiContactTelephonePropertySetDto.new
    mapi_contact.telephones.primary_telephone_number = '+49 211 4247 21'
    mapi_contact
  end

  def self.electronic_addresses_dto
    electronic_addresses = MapiContactElectronicAddressPropertySetDto.new
    electronic_addresses.default_email_address = MapiContactElectronicAddressDto.new
    electronic_addresses.default_email_address.email_address = 'email@aspose.com'
    electronic_addresses
  end

  def self.name_info_dto
    name_info = MapiContactNamePropertySetDto.new
    name_info.given_name = 'Alex'
    name_info.surname = 'Thomas'
    name_info
  end
end
