# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module EmailApiSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logics
  describe EmailApi do
    # Api setup uses environment variables 'appKey', 'appSid', 'apiBaseUrl'
    before(:all) do
      api_base_url = ENV['apiBaseUrl']
      @api = EmailApi.new(ENV['appKey'], ENV['appSid'], api_base_url)
      auth_url = ENV['authUrl']
      if auth_url
        @api.api_client.config.scheme = 'http' if api_base_url.include? 'http:'
        @api.api_client.config.auth_url = auth_url
      end
      @folder = SecureRandom.uuid.to_s
      @storage = 'First Storage'
      @api.create_folder(CreateFolderRequestData.new(@folder, @storage))
    end

    # temp folder will be deleted
    after(:all) do
      @api.delete_folder(DeleteFolderRequestData.new(@folder, @storage, true))
    end

    # This test checks that BaseObject.Type field filled automatically by SDK
    # and properly used in serialization and deserialization
    it 'HierarchicalObject serialization and deserialization test', :pipeline do
      file_name = create_calendar
      calendar = @api.get_calendar(GetCalendarRequestData.new(file_name, @folder, @storage))
      expect(calendar.internal_properties.count { |item| item.type == 'PrimitiveObject' })
        .to be >= 3
      primitive = calendar.internal_properties.find { |item| item.type == 'PrimitiveObject' }
      expect(primitive).to be_a(PrimitiveObject)
      expect(primitive.value).not_to be_nil
    end

    # 'File' field should be a File object,
    # this is the only way for SDK to recognize that it is the file to upload
    it 'Files support test', :pipeline do
      sample = File.new(File.join(__dir__, 'data', 'sample.ics'))
      file_name = SecureRandom.uuid.to_s + '.ics'
      path = "#{@folder}/#{file_name}"
      @api.upload_file(UploadFileRequestData.new(path, sample, @storage))
      exist = @api.object_exists(ObjectExistsRequestData.new(path, @storage))
      expect(exist.exists).to be true
      downloaded = @api.download_file(DownloadFileRequestData.new(path, @storage))
      content = IO.read(downloaded)
      expect(content).to include('Broadway')
    end

    # Contact format specified as Enum, but SDK represents it as a string.
    # Test checks that value parsing works properly.
    # Important! Contact format is case sensitive
    it 'Test ContactFormat', :pipeline do
      %w[VCard Msg].each do |format|
        extension = format == 'Msg' ? '.msg' : '.vcf'
        file_name = SecureRandom.uuid + extension
        @api.create_contact(CreateContactRequestData.new(
                              format,
                              file_name,
                              HierarchicalObjectRequest.new(
                                HierarchicalObject.new('CONTACT', nil, []),
                                StorageFolderLocation.new(@storage, @folder))))
        path = "#{@folder}/#{file_name}"
        exists = @api.object_exists(ObjectExistsRequestData.new(path, @storage)).exists
        expect(exists).to be true
      end
    end

    # Checks that SDK and Backend do not change DateTime during processing.
    # In most cases developer should carefully serialize and deserialize DateTime
    it 'Test DateTime serialization and deserialization', :pipeline do
      start_date = DateTime.now + 2
      # remove microseconds
      start_date -= start_date.sec_fraction / (24 * 60 * 60)
      start_date = start_date.new_offset(0) # offset will be lost anyway
      calendar_file = create_calendar(start_date)
      calendar = @api.get_calendar(GetCalendarRequestData.new(calendar_file, @folder, @storage))
      start_date_property = calendar.internal_properties.find { |item| item.name == 'STARTDATE' }
      fact_start_date = DateTime.strptime(start_date_property.value, '%Y-%m-%d %H:%M:%SZ')
      expect(fact_start_date).to eq(start_date)
    end

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
      result = @api.ai_bcr_parse(AiBcrParseRequestData.new(
                                   AiBcrBase64Rq.new(nil, [AiBcrBase64Image.new(true, image)])))
      expect(result.value.count).to eq 1
      display_name = result.value[0].internal_properties.find { |item| item.name == 'DISPLAYNAME' }
      expect(display_name.value).to include 'Thomas'
    end

    it 'Create calendar email', :pipeline do
      calendar = CalendarDto.new
      calendar.attendees = [MailAddress.new('Attendee Name', 'attendee@aspose.com', 'Accepted')]
      calendar.description = 'Some description'
      calendar.summary = 'Some summary'
      calendar.organizer = MailAddress.new('Organizer Name', 'organizer@aspose.com', 'Accepted')
      calendar.start_date = DateTime.now + 1
      calendar.end_date = DateTime.now + 2
      calendar.location = 'Some location'

      folder_location = StorageFolderLocation.new(@storage, @folder)
      calendar_file = SecureRandom.uuid.to_s + '.ics'
      @api.save_calendar_model(
        SaveCalendarModelRequestData.new(
          calendar_file,
          StorageModelRqOfCalendarDto.new(calendar, folder_location)))

      exist_result = @api.object_exists(
        ObjectExistsRequestData.new("#{@folder}/#{calendar_file}", @storage))
      expect(exist_result.exists).to be true

      alternate = @api.convert_calendar_model_to_alternate(
        ConvertCalendarModelToAlternateRequestData.new(
          CalendarDtoAlternateRq.new(calendar, 'Create')))

      email = EmailDto.new
      email.alternate_views = [alternate]
      email.from = MailAddress.new('From Name', 'cloud.em@yandex.ru')
      email.to = [MailAddress.new('To Name', 'cloud.em@yandex.ru')]
      email.subject = 'Some subject'
      email.body = 'Some body'

      email_file = "#{SecureRandom.uuid}.eml"
      @api.save_email_model(
        SaveEmailModelRequestData.new(
          'Eml', email_file,
          StorageModelRqOfEmailDto.new(
            email, folder_location)))

      downloaded = @api.download_file(
        DownloadFileRequestData.new("#{@folder}/#{email_file}", @storage))
      content = IO.read(downloaded)
      expect(content).to include('cloud.em@yandex.ru')
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
          StorageModelRqOfContactDto.new(
            contact,
            StorageFolderLocation.new(@storage, @folder))))
      exist_result = @api.object_exists(
        ObjectExistsRequestData.new("#{@folder}/#{contact_file}", @storage))
      expect(exist_result.exists).to be true
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

    it 'Discover email config', :pipeline do
      configs = @api.discover_email_config(
        DiscoverEmailConfigRequestData.new('example@gmail.com', true))
      expect(configs.value.count).to be >= 2
      smtp = configs.value.find { |item| item.protocol_type == 'SMTP' }
      expect(smtp.host).to eq 'smtp.gmail.com'
    end

    it 'Create MAPI document', :pipeline do
      file_name = SecureRandom.uuid.to_s + '.msg'
      @api.create_mapi(
        CreateMapiRequestData.new(
          file_name,
          HierarchicalObjectRequest.new(
            HierarchicalObject.new(
              'IPM.Contact', nil, [
                PrimitiveObject.new("Tag:'PidTagMessageClass':0x1A:String", nil, 'IPM.Contact'),
                PrimitiveObject.new("Tag:'PidTagSubject':0x37:String", nil, nil),
                PrimitiveObject.new("Tag:'PidTagSubjectPrefix':0x3D:String", nil, nil),
                PrimitiveObject.new("Tag:'PidTagMessageFlags':0xE07:Integer32", nil, '8'),
                PrimitiveObject.new("Tag:'PidTagNormalizedSubject':0xE1D:String", nil, nil),
                PrimitiveObject.new("Tag:'PidTagBody':0x1000:String", nil, nil),
                PrimitiveObject.new("Tag:'PidTagStoreSupportMask':0x340D:Integer32", nil, '265849'),
                PrimitiveObject.new("Tag:'PidTagSurname':0x3A11:String", nil, 'Surname'),
                PrimitiveObject.new(
                  "Tag:'PidTagOtherTelephoneNumber':0x3A1F:String", nil, '+79123456789'),
                PrimitiveObject.new("Tag:'':0x6662:Integer32", nil, '0'),
                PrimitiveObject.new(
                  "Lid:'PidLidAddressBookProviderArrayType':0x8029:Integer32:00062004-0000-0000-c000-000000000046",
                  nil, '1')]),
            StorageFolderLocation.new(@storage, @folder))))
      exist = @api.object_exists(ObjectExistsRequestData.new("#{@folder}/#{file_name}", @storage))
                  .exists
      expect(exist).to be true
    end

    it 'Add attachment using MAPI', :pipeline do
      file_name = create_calendar
      attachment_name = create_calendar
      @api.add_mapi_attachment(AddMapiAttachmentRequestData.new(
                                 file_name,
                                 attachment_name,
                                 AddAttachmentRequest.new(
                                   StorageFolderLocation.new(@storage, @folder),
                                   StorageFolderLocation.new(@storage, @folder))))
      calendar_attachment = @api.get_calendar_attachment(
        GetCalendarAttachmentRequestData.new(
          file_name, attachment_name, @folder, @storage))
      content = IO.read(calendar_attachment)
      expect(content).to include('Aspose Ltd')
    end

    it 'Get MAPI properties', :pipeline do
      file_name = create_calendar
      properties = @api.get_mapi_properties(GetMapiPropertiesRequestData.new(
                                              file_name, @folder, @storage))
      expect(properties.hierarchical_object.name).to include('IPM.Schedule')
    end

    it 'Check disposable email', :pipeline do
      disposable = @api.is_email_address_disposable(
        IsEmailAddressDisposableRequestData.new('example@mailcatch.com'))
      expect(disposable.value).to be true
      regular = @api.is_email_address_disposable(
        IsEmailAddressDisposableRequestData.new('example@gmail.com'))
      expect(regular.value).to be false
    end

    it 'Check EmailClientAccount', :pipeline do
      account = EmailClientAccount.new(
        'smtp.gmail.com',
        551,
        'SSLAuto',
        'SMTP',
        EmailClientAccountPasswordCredentials.new(
          'login', nil, 'password'))
      file_name = SecureRandom.uuid.to_s + '.account'
      @api.save_email_client_account(
        SaveEmailClientAccountRequestData.new(
          StorageFileRqOfEmailClientAccount.new(
            account, StorageFileLocation.new(@storage, @folder, file_name))))
      result = @api.get_email_client_account(GetEmailClientAccountRequestData.new(
                                               file_name, @folder, @storage))
      expect(result.credentials.discriminator).to eq(account.credentials.discriminator)
      expect(result.credentials.password).to eq(account.credentials.password)
      expect(result.host).to eq(account.host)
    end

    it 'Check EmailClientMultiAccount', :pipeline do
      # Create multi account object
      multi_account = EmailClientMultiAccount.new(
        [EmailClientAccount.new('imap.gmail.com', 993, 'SSLAuto', 'IMAP',
                                EmailClientAccountPasswordCredentials.new(
                                  'example@gmail.com', nil, 'password')),
         EmailClientAccount.new(
           'exchange.outlook.com', 443, 'SSLAuto', 'EWS',
           EmailClientAccountOauthCredentials.new(
             'example@outlook.com', nil, 'client_id', 'client_secret', 'refresh_token'))],
        EmailClientAccount.new('smtp.gmail.com', 465, 'SSLAuto', 'SMTP',
                               EmailClientAccountPasswordCredentials.new(
                                 'example@gmail.com', nil, 'password')))
      file_name = SecureRandom.uuid.to_s + '.multi.account'
      folder = @folder
      storage = @storage
      # Save multi account
      @api.save_email_client_multi_account(
        SaveEmailClientMultiAccountRequestData.new(
          StorageFileRqOfEmailClientMultiAccount.new(
            multi_account,
            StorageFileLocation.new(storage, folder, file_name))))
      # Get multi account object from storage
      multi_account_from_storage = @api.get_email_client_multi_account(
        GetEmailClientMultiAccountRequestData.new(
          file_name, folder, storage))

      expect(multi_account_from_storage.receive_accounts.count).to eq(2)
      expect(multi_account_from_storage.send_account.credentials.discriminator)
        .to eq(multi_account.send_account.credentials.discriminator)
    end

    it 'Check convert calendar', :pipeline do
      location = 'Some location'
      # Create DTO with specified location:
      calendar_dto = CalendarDto.new
      calendar_dto.location = location
      calendar_dto.summary = 'Some summary'
      calendar_dto.description = 'Some description'
      calendar_dto.start_date = DateTime.now
      calendar_dto.end_date = DateTime.now + 1
      calendar_dto.organizer = MailAddress.new nil, 'organizer@aspose.com'
      calendar_dto.attendees = [MailAddress.new(nil, 'attendee@aspose.com')]
      # We can convert this DTO to a MAPI or ICS file:
      mapi_file = @api.convert_calendar_model_to_file(
        ConvertCalendarModelToFileRequestData.new('Msg', calendar_dto))
      # Let's convert this file to an ICS format:
      ics_file = @api.convert_calendar(
        ConvertCalendarRequestData.new('Ics', mapi_file))
      # ICS is a text format. We can read file content to a string and check that it
      # contains specified location as a substring:
      ics_content = IO.read(ics_file)
      expect(ics_content).to include location
      # We can also convert the file back to a CalendarDto object:
      dto = @api.get_calendar_file_as_model(
        GetCalendarFileAsModelRequestData.new(ics_file))
      expect(dto.location).to eq location
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

    def create_calendar(start_date = nil)
      file_name = SecureRandom.uuid.to_s + '.ics'
      start_date = start_date.nil? ? DateTime.now + 1 : start_date
      end_date = start_date + 1
      @api.create_calendar(
        CreateCalendarRequestData.new(
          file_name,
          HierarchicalObjectRequest.new(
            HierarchicalObject.new(
              'CALENDAR', nil, [
                PrimitiveObject.new('LOCATION', nil, 'location'),
                PrimitiveObject.new('STARTDATE', nil,
                                    start_date.strftime('%Y-%m-%d %H:%M:%SZ')),
                PrimitiveObject.new('ENDDATE', nil,
                                    end_date.strftime('%Y-%m-%d %H:%M:%SZ')),
                HierarchicalObject.new(
                  'ORGANIZER', nil, [
                    PrimitiveObject.new('ADDRESS', nil, 'address@am.ru'),
                    PrimitiveObject.new('DISPLAYNAME', nil, 'Piu Man')]),
                HierarchicalObject.new(
                  'ATTENDEES', nil, [
                    IndexedHierarchicalObject.new(
                      'ATTENDEE', nil, 0, [
                        PrimitiveObject.new('ADDRESS', nil, 'attendee@am.ru'),
                        PrimitiveObject.new('DISPLAYNAME', nil, 'Attendee Name')])])]),
            StorageFolderLocation.new(@storage, @folder))))
      file_name
    end
  end
end
