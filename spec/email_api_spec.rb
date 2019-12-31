require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
include AsposeEmailCloud

# A set of autotests to check main SDK logics
describe EmailApi do
  # Api setup uses environment variables 'appKey', 'appSid', 'apiBaseUrl'
  before(:all) do
    @api = EmailApi.new(ENV['appKey'], ENV['appSid'], ENV['apiBaseUrl'])
    auth_url = ENV['authUrl']
    if auth_url
      @api.api_client.config.scheme = "http" if auth_url.include? "http:"
      @api.api_client.config.auth_url = auth_url  
    end
    @folder = SecureRandom.uuid().to_s()
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
    fileName = create_calendar()
    calendar = @api.get_calendar(GetCalendarRequestData.new(fileName, @folder, @storage))
    expect(calendar.internal_properties.count { |item| item.type == 'PrimitiveObject' }).to be >= 3
    primitive = calendar.internal_properties.find { |item| item.type == 'PrimitiveObject' }
    expect(primitive).to be_a(PrimitiveObject)
    expect(primitive.value).not_to be_nil
  end

  # 'File' field should be a File object, this is the only way for SDK to recognize that it is the file to upload
  it 'Files support test', :pipeline do
    sample = File.new(File.join(File.expand_path(File.dirname(__FILE__)), 'data', 'sample.ics'))
    fileName = SecureRandom.uuid().to_s() + '.ics'
    path = "#{@folder}/#{fileName}"
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
    ['VCard', 'Msg'].each do |format|
      extension = format == 'Msg' ? '.msg' : '.vcf'
      fileName = SecureRandom.uuid() + extension
      @api.create_contact(CreateContactRequestData.new(
          format,
          fileName,
          HierarchicalObjectRequest.new(
              HierarchicalObject.new('CONTACT', nil, []),
              StorageFolderLocation.new(@storage, @folder))))
      path = "#{@folder}/#{fileName}"
      exists = @api.object_exists(ObjectExistsRequestData.new(path, @storage)).exists
      expect(exists).to be true
    end
  end

  # Checks that SDK and Backend do not change DateTime during processing.
  # In most cases developer should carefully serialize and deserialize DateTime
  it 'Test DateTime serialization and deserialization', :pipeline do
    startDate = DateTime.now + 2
    # remove microseconds
    startDate = startDate - startDate.sec_fraction / (24 * 60 * 60)
    startDate = startDate.new_offset(0) #offset will be lost anyway
    calendarFile = create_calendar(startDate)
    calendar = @api.get_calendar(GetCalendarRequestData.new(calendarFile, @folder, @storage))
    startDateProperty = calendar.internal_properties.find { |item| item.name == 'STARTDATE' }
    factStartDate = DateTime.strptime(startDateProperty.value, '%Y-%m-%d %H:%M:%SZ')
    expect(factStartDate).to eq(startDate)
  end

  it 'Test AiName gender detection' do
    result = @api.ai_name_genderize(
      AiNameGenderizeRequestData.new('John Cane'))
    expect(result.value.count).to be >= 1
    expect(result.value[0].gender).to eq 'Male'
  end

  it 'Test AiName formatting' do
    result = @api.ai_name_format(
      AiNameFormatRequestData.new('Mr. John Michael Cane', nil, nil, nil, nil, '%t%L%f%m'))
    expect(result.name).to eq 'Mr. Cane J. M.'
  end

  it 'AiName match test' do
    first = 'John Michael Cane'
    second = 'Cane J.'
    result = @api.ai_name_match(
      AiNameMatchRequestData.new(first, second))
    expect(result.similarity).to be >= 0.5
  end

  it 'Expand AiName test' do
    name = 'Smith Bobby'
    result = @api.ai_name_expand(AiNameExpandRequestData.new(name))
    mr = result.names.find {|weighted| weighted.name == 'Mr. Smith' }
    initial = result.names.find {|weighted| weighted.name == 'B. Smith' }
    expect(mr).not_to be_nil
    expect(initial).not_to be_nil
  end

  it 'Complete AiName test' do
    prefix = 'Dav'
    result = @api.ai_name_complete(
      AiNameCompleteRequestData.new(prefix))
    names = result.names.map {|weighted|
      "#{prefix}#{weighted.name}"
    }
    expect(names).to include 'David'
    expect(names).to include 'Davis'
    expect(names).to include 'Dave'
  end

  it 'Extract AiName from email address' do
    address = 'john-cane@gmail.com'
    result = @api.ai_name_parse_email_address(
      AiNameParseEmailAddressRequestData.new(address))
    extracted_values = result.value
      .map { |item| item.name }
      .reduce(:+)
    given_name = extracted_values.find {|item| item.category == 'GivenName'}
    surname = extracted_values.find {|item| item.category == 'Surname'}
    expect(given_name.value).to eq 'John'
    expect(surname.value).to eq 'Cane'
  end

  # Test business card recognition with storage
  it 'AiBcr Parse using storage' do
    image = File.new(File.join(File.expand_path(File.dirname(__FILE__)), 'data', 'test_single_0001.png'))
    fileName = SecureRandom.uuid().to_s() + '.png'
    path = "#{@folder}/#{fileName}"
    # 1) Upload business card image to storage
    @api.upload_file(UploadFileRequestData.new(path, image, @storage))
    outFolder = SecureRandom.uuid().to_s()
    outFolderPath = "#{@folder}/#{outFolder}"
    @api.create_folder(CreateFolderRequestData.new(outFolderPath, @storage))
    # 2) Call business card recognition action
    result = @api.ai_bcr_parse_storage(AiBcrParseStorageRequestData.new(
      AiBcrParseStorageRq.new(
        nil,
        [AiBcrImageStorageFile.new(true, StorageFileLocation.new(@storage, @folder, fileName))],
        StorageFolderLocation.new(@storage, outFolderPath))))
    # Check that only one file produced
    expect(result.value.count).to eq 1
    # 3) Get file name from recognition result
    contact_file = result.value[0]
    # 4) Download VCard file, produced by recognition method, check it contains text 'Thomas'
    downloaded = @api.download_file(DownloadFileRequestData.new(
      "#{contact_file.folder_path}/#{contact_file.file_name}", contact_file.storage))
    content = IO.read(downloaded)
    expect(content).to include 'Thomas'
    # 5) Get VCard object properties list, check that there are 3 properties or more
    contact_properties = @api.get_contact_properties(
      GetContactPropertiesRequestData.new('vcard', contact_file.file_name, contact_file.folder_path, contact_file.storage))
    expect(contact_properties.internal_properties.count).to be >= 3
  end

  # Test business card recognition
  it 'AiBcr Parse' do
    image = File.open(File.join(File.expand_path(File.dirname(__FILE__)), 'data', 'test_single_0001.png'), 'rb') { |f|
      bin = f.read
      Base64.encode64(bin)
    }
    result = @api.ai_bcr_parse(AiBcrParseRequestData.new(
      AiBcrBase64Rq.new(nil, [AiBcrBase64Image.new(true, image)])))
    expect(result.value.count).to eq 1
    display_name = result.value[0].internal_properties.find { |item| item.name == 'DISPLAYNAME' }
    expect(display_name.value).to include 'Thomas'
  end

  def create_calendar(startDate = nil)
    fileName = SecureRandom.uuid().to_s() + '.ics'
    startDate = startDate.nil? ? DateTime.now + 1 : startDate
    endDate = startDate + 1
    @api.create_calendar(CreateCalendarRequestData.new(fileName, HierarchicalObjectRequest.new(
        HierarchicalObject.new('CALENDAR', nil, [
            PrimitiveObject.new('LOCATION', nil, 'location'),
            PrimitiveObject.new('STARTDATE', nil, startDate.strftime('%Y-%m-%d %H:%M:%SZ')),
            PrimitiveObject.new('ENDDATE', nil, endDate.strftime('%Y-%m-%d %H:%M:%SZ')),
            HierarchicalObject.new('ORGANIZER', nil, [
                PrimitiveObject.new('ADDRESS', nil, 'address@am.ru'),
                PrimitiveObject.new('DISPLAYNAME', nil, 'Piu Man')
            ]),
            HierarchicalObject.new('ATTENDEES', nil, [
                IndexedHierarchicalObject.new('ATTENDEE', nil, 0, [
                    PrimitiveObject.new('ADDRESS', nil, 'attendee@am.ru'),
                    PrimitiveObject.new('DISPLAYNAME', nil, 'Attendee Name')
                ])
            ])
        ]),
        StorageFolderLocation.new(@storage, @folder))))
    return fileName
  end
end