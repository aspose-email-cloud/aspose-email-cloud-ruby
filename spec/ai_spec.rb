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
    before(:all) do
      # warm up AI
      begin
        @api.ai.name.genderize(AiNameGenderizeRequest.new(name: 'John Cane'))
      rescue
        # do nothing
      end
    end

    it 'Test AiName gender detection', :pipeline do
      result = @api.ai.name.genderize(
        AiNameGenderizeRequest.new(name: 'John Cane'))
      expect(result.value.count).to be >= 1
      expect(result.value[0].gender).to eq 'Male'
    end

    it 'Test AiName formatting', :pipeline do
      result = @api.ai.name.format(
        AiNameFormatRequest.new(name: 'Mr. John Michael Cane', format: '%t%L%f%m'))
      expect(result.name).to eq 'Mr. Cane J. M.'
    end

    it 'AiName match test', :pipeline do
      first = 'John Michael Cane'
      second = 'Cane J.'
      result = @api.ai.name.match(
        AiNameMatchRequest.new(name: first, other_name: second))
      expect(result.similarity).to be >= 0.5
    end

    it 'Expand AiName test', :pipeline do
      name = 'Smith Bobby'
      result = @api.ai.name.expand(AiNameExpandRequest.new(name: name))
      mr = result.names.find { |weighted| weighted.name == 'Mr. Smith' }
      initial = result.names.find { |weighted| weighted.name == 'B. Smith' }
      expect(mr).not_to be_nil
      expect(initial).not_to be_nil
    end

    it 'Complete AiName test', :pipeline do
      prefix = 'Dav'
      result = @api.ai.name.complete(
        AiNameCompleteRequest.new(name: prefix))
      names = result.names.map { |weighted| "#{prefix}#{weighted.name}" }
      expect(names).to include 'David'
      expect(names).to include 'Davis'
      expect(names).to include 'Dave'
    end

    it 'Extract AiName from email address', :pipeline do
      address = 'john-cane@gmail.com'
      result = @api.ai.name.parse_email_address(
        AiNameParseEmailAddressRequest.new(email_address: address))
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
      @api.cloud_storage.file.upload_file(
        UploadFileRequest.new(path: path, file: image, storage_name: @storage))
      out_folder = SecureRandom.uuid.to_s
      out_folder_path = "#{@folder}/#{out_folder}"
      @api.cloud_storage.folder.create_folder(
        CreateFolderRequest.new(path: out_folder_path, storage_name: @storage))
      # 2) Call business card recognition action
      result = @api.ai.bcr.parse_storage(
        AiBcrParseStorageRequest.new(
          out_folder: StorageFolderLocation.new(storage: @storage, folder_path: out_folder),
          images: [AiBcrImageStorageFile.new(
            is_single: true,
            file: StorageFileLocation.new(
              storage: @storage,
              folder_path: @folder,
              file_name: file_name))]))
      # Check that only one file produced
      expect(result.value.count).to eq 1
      # 3) Get file name from recognition result
      contact_file = result.value[0]
      # 4) Download VCard file, produced by recognition method, check it contains text 'Thomas'
      downloaded = @api.cloud_storage.file.download_file(
        DownloadFileRequest.new(
          path: "#{contact_file.folder_path}/#{contact_file.file_name}",
          storage_name: contact_file.storage))
      content = IO.read(downloaded)
      expect(content).to include 'Thomas'
    end

    # Test business card recognition
    it 'AiBcr Parse', :ai do
      image = File.new(File.join(__dir__, 'data', 'test_single_0001.png'))
      result = @api.ai.bcr.parse(AiBcrParseRequest.new(file: image, is_single: true))
      expect(result.value.count).to eq 1
      expect(result.value[0].display_name.value).to include 'Thomas'
    end
  end
end
