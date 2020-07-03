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
    # Contact format specified as Enum, but SDK represents it as a string.
    # Test checks that value parsing works properly.
    # Important! Contact format is case sensitive
    it 'Test ContactFormat', :pipeline do
      %w[VCard Msg].each do |format|
        extension = format == 'Msg' ? '.msg' : '.vcf'
        file_name = SecureRandom.uuid + extension
        @api.create_contact(
          CreateContactRequestData.new(
            format,
            file_name,
            HierarchicalObjectRequest.new(
              HierarchicalObject.new('CONTACT', nil, []),
              storage_folder)))
        path = "#{@folder}/#{file_name}"
        exists = @api.object_exists(ObjectExistsRequestData.new(path, @storage)).exists
        expect(exists).to be true
      end
    end

    it 'Create contact model', :pipeline do
      contact = ContactDto.new
      contact.surname = 'Thomas'
      contact.given_name = 'Alex'
      contact.email_addresses = [EmailAddress.new(
        EnumWithCustomOfEmailAddressCategory.new('Work'),
        'Alex Thomas', true, nil, 'alex.thomas@work.com')]
      contact.phone_numbers = [PhoneNumber.new(
        EnumWithCustomOfPhoneNumberCategory.new('Work'),
        '+49211424721', true)]
      contact.gender = 'Male'

      contact_file = "#{SecureRandom.uuid}.vcf"
      @api.save_contact_model(
        SaveContactModelRequestData.new(
          'VCard', contact_file,
          StorageModelRqOfContactDto.new(contact, storage_folder)))
      exist_result = @api.object_exists(
        ObjectExistsRequestData.new("#{@folder}/#{contact_file}", @storage))
      expect(exist_result.exists).to be true
    end

    it 'Check convert contact', :pipeline do
      surname = 'Cane'
      contact_dto = ContactDto.new
      contact_dto.surname = surname
      contact_dto.given_name = 'John'
      contact_dto.gender = 'Male'
      contact_dto.email_addresses = [EmailAddress.new(nil, nil, nil, nil, 'address@aspose.com')]
      contact_dto.phone_numbers = [PhoneNumber.new(nil, '+4734534643')]
      mapi_file = @api.convert_contact_model_to_file(
        ConvertContactModelToFileRequestData.new('Msg', contact_dto))
      vcard_file = @api.convert_contact(
        ConvertContactRequestData.new('VCard', 'Msg', mapi_file))
      vcard_content = IO.read(vcard_file)
      expect(vcard_content).to include surname
      dto = @api.get_contact_file_as_model(
        GetContactFileAsModelRequestData.new('VCard', vcard_file))
      expect(dto.surname).to eq surname
    end
  end
end