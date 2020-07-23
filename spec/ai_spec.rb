# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module AiSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'AI spec' do
    include_context 'spec base'
    it 'Test AiName gender detection', :pipeline do
      result = @api.ai_name_genderize(
        AiNameGenderizeRequestData.new('John Cane'))
      expect(result.value.count).to be >= 1
      expect(result.value[0].gender).to eq 'Male'
    end

    it 'Test AiName formatting', :pipeline do
      result = @api.ai_name_format(
        AiNameFormatRequestData.new('Mr. John Michael Cane', nil, nil, nil, nil, '%t%L%f%m'))
      expect(result.name).to eq 'Mr. Cane J. M.'
    end

    it 'AiName match test', :pipeline do
      first = 'John Michael Cane'
      second = 'Cane J.'
      result = @api.ai_name_match(
        AiNameMatchRequestData.new(first, second))
      expect(result.similarity).to be >= 0.5
    end

    it 'Expand AiName test', :pipeline do
      name = 'Smith Bobby'
      result = @api.ai_name_expand(AiNameExpandRequestData.new(name))
      mr = result.names.find { |weighted| weighted.name == 'Mr. Smith' }
      initial = result.names.find { |weighted| weighted.name == 'B. Smith' }
      expect(mr).not_to be_nil
      expect(initial).not_to be_nil
    end

    it 'Complete AiName test', :pipeline do
      prefix = 'Dav'
      result = @api.ai_name_complete(
        AiNameCompleteRequestData.new(prefix))
      names = result.names.map { |weighted| "#{prefix}#{weighted.name}" }
      expect(names).to include 'David'
      expect(names).to include 'Davis'
      expect(names).to include 'Dave'
    end

    it 'Extract AiName from email address', :pipeline do
      address = 'john-cane@gmail.com'
      result = @api.ai_name_parse_email_address(
        AiNameParseEmailAddressRequestData.new(address))
      extracted_values = result.value
                               .map(&:name)
                               .reduce(:+)
      given_name = extracted_values.find { |item| item.category == 'GivenName' }
      surname = extracted_values.find { |item| item.category == 'Surname' }
      expect(given_name.value).to eq 'John'
      expect(surname.value).to eq 'Cane'
    end

    # Test business card recognition with storage
    it 'AiBcr Parse using storage', :ai do
      image = File.new(File.join(__dir__, 'data', 'test_single_0001.png'))
      file_name = SecureRandom.uuid.to_s + '.png'
      path = "#{@folder}/#{file_name}"
      # 1) Upload business card image to storage
      @api.upload_file(UploadFileRequestData.new(path, image, @storage))
      out_folder = SecureRandom.uuid.to_s
      out_folder_path = "#{@folder}/#{out_folder}"
      @api.create_folder(CreateFolderRequestData.new(out_folder_path, @storage))
      # 2) Call business card recognition action
      result = @api.ai_bcr_parse_storage(
        AiBcrParseStorageRequestData.new(
          AiBcrParseStorageRq.new(
            nil,
            [AiBcrImageStorageFile.new(
              true, StorageFileLocation.new(@storage, @folder, file_name))],
            StorageFolderLocation.new(@storage, out_folder_path))))
      # Check that only one file produced
      expect(result.value.count).to eq 1
      # 3) Get file name from recognition result
      contact_file = result.value[0]
      # 4) Download VCard file, produced by recognition method, check it contains text 'Thomas'
      downloaded = @api.download_file(
        DownloadFileRequestData.new(
          "#{contact_file.folder_path}/#{contact_file.file_name}", contact_file.storage))
      content = IO.read(downloaded)
      expect(content).to include 'Thomas'
      # 5) Get VCard object properties list, check that there are 3 properties or more
      contact_properties = @api.get_contact_properties(
        GetContactPropertiesRequestData.new(
          'vcard', contact_file.file_name, contact_file.folder_path, contact_file.storage))
      expect(contact_properties.internal_properties.count).to be >= 3
    end

    # Test business card recognition
    it 'AiBcr Parse', :ai do
      image = nil
      File.open(File.join(__dir__, 'data', 'test_single_0001.png'), 'rb') do |f|
        image = Base64.encode64(f.read)
      end
      result = @api.ai_bcr_parse(
        AiBcrParseRequestData.new(
          AiBcrBase64Rq.new(nil, [AiBcrBase64Image.new(true, image)])))
      expect(result.value.count).to eq 1
      display_name = result.value[0].internal_properties.find { |item| item.name == 'DISPLAYNAME' }
      expect(display_name.value).to include 'Thomas'
    end

    it 'AI BCR Parse to model', :ai do
      image = nil
      File.open(File.join(__dir__, 'data', 'test_single_0001.png'), 'rb') do |f|
        image = Base64.encode64(f.read)
      end
      result = @api.ai_bcr_parse_model(
        AiBcrParseModelRequestData.new(
          AiBcrBase64Rq.new(nil, [AiBcrBase64Image.new(true, image)])))
      expect(result.value.count).to eq 1
      first_vcard = result.value[0]
      expect(first_vcard.display_name).to include 'Thomas'
    end
  end
end
