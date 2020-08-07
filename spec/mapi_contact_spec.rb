# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module MapiContactSpec
  include AsposeEmailCloud

  describe 'MAPI contact spec' do
    include_context 'spec base'
    it 'Model to ContactDto', :pipeline do
      mapi_contact = MapiContactSpec.mapi_contact_dto
      contact = @api.mapi.contact.as_contact_dto(mapi_contact)
      expect(mapi_contact.name_info.given_name).to eq contact.given_name
      expect(mapi_contact.name_info.surname).to eq contact.surname
    end

    it 'Convert MAPI model to file', :pipeline do
      mapi_contact = MapiContactSpec.mapi_contact_dto
      vcard_file = @api.mapi.contact.as_file(
        MapiContactAsFileRequest.new(format: 'VCard', value: mapi_contact))
      vcard_content = IO.read(vcard_file)
      expect(vcard_content).to include mapi_contact.name_info.given_name
      mapi_contact_converted = @api.mapi.contact.from_file(
        MapiContactFromFileRequest.new(format: 'VCard', file: vcard_file))
      expect(mapi_contact.name_info.surname).to eq mapi_contact_converted.name_info.surname
    end

    it 'Check storage support', :pipeline do
      file_name = SecureRandom.uuid.to_s + '.msg'
      mapi_contact = MapiContactSpec.mapi_contact_dto
      @api.mapi.contact.save(
        MapiContactSaveRequest.new(
          storage_file: StorageFileLocation.new(
            storage: @storage,
            folder_path: @folder,
            file_name: file_name),
          value: mapi_contact,
          format: 'Msg'))
      mapi_contact_from_storage = @api.mapi.contact.get(
        MapiContactGetRequest.new(
          format: 'Msg',
          file_name: file_name,
          folder: @folder,
          storage: @storage))
      expect(mapi_contact.name_info.surname).to eq mapi_contact_from_storage.name_info.surname
    end
  end

  # @return [MapiContactDto]
  def self.mapi_contact_dto
    MapiContactDto.new(
      electronic_addresses: MapiContactElectronicAddressPropertySetDto.new(
        default_email_address: MapiContactElectronicAddressDto.new(
          email_address: 'email@aspose.com')),
      name_info: MapiContactNamePropertySetDto.new(
        given_name: 'Alex', surname: 'Thomas'),
      personal_info: MapiContactPersonalInfoPropertySetDto.new(
        business_home_page: 'www.aspose.com'),
      professional_info: MapiContactProfessionalPropertySetDto.new(
        profession: 'GENERAL DIRECTOR'),
      telephones: MapiContactTelephonePropertySetDto.new(
        primary_telephone_number: '+49 211 4247 21'))
  end
end
