# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module HierarchicalMapiSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'Hierarchical MAPI spec' do
    include_context 'spec base'
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
                  "Lid:'PidLidAddressBookProviderArrayType':0x8029:Integer32:" \
                      '00062004-0000-0000-c000-000000000046',
                  nil, '1')]),
            storage_folder)))
      exist = @api.object_exists(ObjectExistsRequestData.new("#{@folder}/#{file_name}", @storage))
                  .exists
      expect(exist).to be true
    end

    it 'Add attachment using MAPI', :pipeline do
      file_name = create_calendar
      attachment_name = create_calendar
      @api.add_mapi_attachment(
        AddMapiAttachmentRequestData.new(
          file_name,
          attachment_name,
          AddAttachmentRequest.new(
            storage_folder,
            storage_folder)))
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
  end
end
