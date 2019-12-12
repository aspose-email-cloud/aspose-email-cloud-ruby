require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
include AsposeEmailCloud

# A set of autotests to check main SDK logics
describe EmailApi do
  # Api setup uses environment variables 'appKey', 'appSid', 'apiBaseUrl'
  before(:all) do
    @api = EmailApi.new(ENV['appKey'], ENV['appSid'], ENV['apiBaseUrl'])
    @api.api_client.config.scheme = "http"
    auth_url = ENV['authUrl']
    @api.api_client.config.auth_url = auth_url if auth_url
    @folder = SecureRandom.uuid().to_s()
    @storage = 'First Storage'
    @api.create_folder(CreateFolderRequestData.new(@folder, @storage))
  end

  # temp folder will be deleted
  after(:all) do
    @api.delete_folder(DeleteFolderRequestData.new(@folder, @storage, true))
  end

  # HierarchicalObject serialization and deserialization test.
  # This test checks that BaseObject.Type field filled automatically by SDK
  # and properly used in serialization and deserialization
  it 'HierarchicalObject' do
    fileName = create_calendar()
    calendar = @api.get_calendar(GetCalendarRequestData.new(fileName, @folder, @storage))
    expect(calendar.internal_properties.count { |item| item.type == 'PrimitiveObject' }).to be >= 3
    primitive = calendar.internal_properties.find { |item| item.type == 'PrimitiveObject' }
    expect(primitive).to be_a(PrimitiveObject)
    expect(primitive.value).not_to be_nil
  end

  # Files support test. 'File' field should be a File object, this is the only way for SDK to recognize that it is the file to upload
  it 'File' do
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
  it 'ContactFormat' do
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

  # Test DateTime serialization and deserialization.
  # Checks that SDK and Backend do not change DateTime during processing.
  # In most cases developer should carefully serialize and deserialize DateTime
  it 'DateTime' do
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
    expect(result.value.count).to be == 1
    # 3) Get file name from recognition result
    contact_file = result.value[0]
    # 4) Download VCard file, produced by recognition method, check it contains text 'Thomas'
    downloaded = @api.download_file(DownloadFileRequestData.new(
      "#{contact_file.folder_path}/#{contact_file.file_name}", contact_file.storage))
    content = IO.read(downloaded)
    expect(content).to include('Thomas')
    # 5) Get VCard object properties list, check that there are 3 properties or more
    contact_properties = @api.get_contact_properties(
      GetContactPropertiesRequestData.new('vcard', contact_file.file_name, contact_file.folder_path, contact_file.storage))
    expect(contact_properties.internal_properties.count).to be >= 3
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