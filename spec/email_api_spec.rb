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
    calendarFile = create_calendar(startDate)
    calendar = @api.get_calendar(GetCalendarRequestData.new(calendarFile, @folder, @storage))
    startDateProperty = calendar.internal_properties.find { |item| item.name == 'STARTDATE' }
    factStartDate = DateTime
                        .strptime(startDateProperty.value, '%Y-%m-%d %H:%M:%SZ')
                        .new_offset(startDate.offset) #DateTime is in UTS, so offset should be restored
    expect(factStartDate).to eq(startDate)
  end

  def create_calendar(startDate = nil)
    fileName = SecureRandom.uuid().to_s() + '.ics'
    startDate = startDate.nil? ? DateTime.now + 1 : startDate
    endDate = startDate + 1
    @api.create_calendar(CreateCalendarRequestData.new(fileName, HierarchicalObjectRequest.new(
        HierarchicalObject.new('CALENDAR', nil, [
            PrimitiveObject.new('LOCATION', nil, 'location'),
            PrimitiveObject.new('STARTDATE', nil, startDate.to_s()),
            PrimitiveObject.new('ENDDATE', nil, endDate.to_s()),
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