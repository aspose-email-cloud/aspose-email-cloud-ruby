#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiContactDto.rb">
#    Copyright (c) 2018-2023 Aspose Pty Ltd. All rights reserved.
#  </copyright>
#  <summary>
#    Permission is hereby granted, free of charge, to any person obtaining a
#   copy  of this software and associated documentation files (the "Software"),
#   to deal  in the Software without restriction, including without limitation
#   the rights  to use, copy, modify, merge, publish, distribute, sublicense,
#   and/or sell  copies of the Software, and to permit persons to whom the
#   Software is  furnished to do so, subject to the following conditions:
#
#   The above copyright notice and this permission notice shall be included in
#   all  copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#   FROM,  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#   DEALINGS IN THE SOFTWARE.
#  </summary>
#  ----------------------------------------------------------------------------

require 'date'

module AsposeEmailCloud
  # Represents outlook contact information.             
  class MapiContactDto < MapiMessageItemBaseDto
    # Message item attachments.             
    # @return [Array<MapiAttachmentDto>]
    attr_accessor :attachments
    # Billing information associated with an item.             
    # @return [String]
    attr_accessor :billing
    # Message text.             
    # @return [String]
    attr_accessor :body
    # Gets the BodyRtf of the message converted to HTML, if present, otherwise an empty string.             
    # @return [String]
    attr_accessor :body_html
    # RTF formatted message text.             
    # @return [String]
    attr_accessor :body_rtf
    # The content type of message body. Enum, available values: PlainText, Html, Rtf
    # @return [String]
    attr_accessor :body_type
    # Contains keywords or categories for the message object.             
    # @return [Array<String>]
    attr_accessor :categories
    # Contains the names of the companies that are associated with an item.             
    # @return [Array<String>]
    attr_accessor :companies
    # The item id, uses with a server.             
    # @return [String]
    attr_accessor :item_id
    # Case-sensitive string that identifies the sender-defined message class, such as IPM.Note. The message class specifies the type, purpose, or content of the message.             
    # @return [String]
    attr_accessor :message_class
    # Contains the mileage information that is associated with an item.             
    # @return [String]
    attr_accessor :mileage
    # Recipients of the message.             
    # @return [Array<MapiRecipientDto>]
    attr_accessor :recipients
    # Contains values that indicate the message sensitivity. Enum, available values: None, Personal, Private, CompanyConfidential
    # @return [String]
    attr_accessor :sensitivity
    # Subject of the message.             
    # @return [String]
    attr_accessor :subject
    # Subject prefix that typically indicates some action on a message, such as \"FW: \" for forwarding.             
    # @return [String]
    attr_accessor :subject_prefix
    # List of MAPI properties             
    # @return [Array<MapiPropertyDto>]
    attr_accessor :properties
    def discriminator #getter method
      self.class.name.split('::').last
    end

    def discriminator=(discriminator) #setter method, parameter ignored
      @discriminator = self.class.name.split('::').last
    end
    # Specify properties for up to three different e-mail addresses and three different fax addresses.             
    # @return [MapiContactElectronicAddressPropertySetDto]
    attr_accessor :electronic_addresses
    # Specify events associated with a contact.             
    # @return [MapiContactEventPropertySetDto]
    attr_accessor :events
    # The properties are used to specify the name of the person represented by the contact.             
    # @return [MapiContactNamePropertySetDto]
    attr_accessor :name_info
    # Specify other fields of contact.             
    # @return [MapiContactOtherPropertySetDto]
    attr_accessor :other_fields
    # Specify other additional contact information.             
    # @return [MapiContactPersonalInfoPropertySetDto]
    attr_accessor :personal_info
    # Contact photo.             
    # @return [MapiContactPhotoDto]
    attr_accessor :photo
    # Specify three physical addresses: Home Address, Work Address, and Other Address. One of the addresses can be marked as the Mailing Address.             
    # @return [MapiContactPhysicalAddressPropertySetDto]
    attr_accessor :physical_addresses
    # Properties are used to store professional details for the person represented by the contact.             
    # @return [MapiContactProfessionalPropertySetDto]
    attr_accessor :professional_info
    # Specify telephone numbers for the contact.             
    # @return [MapiContactTelephonePropertySetDto]
    attr_accessor :telephones
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attachments' => :'attachments',
        :'billing' => :'billing',
        :'body' => :'body',
        :'body_html' => :'bodyHtml',
        :'body_rtf' => :'bodyRtf',
        :'body_type' => :'bodyType',
        :'categories' => :'categories',
        :'companies' => :'companies',
        :'item_id' => :'itemId',
        :'message_class' => :'messageClass',
        :'mileage' => :'mileage',
        :'recipients' => :'recipients',
        :'sensitivity' => :'sensitivity',
        :'subject' => :'subject',
        :'subject_prefix' => :'subjectPrefix',
        :'properties' => :'properties',
        :'discriminator' => :'discriminator',
        :'electronic_addresses' => :'electronicAddresses',
        :'events' => :'events',
        :'name_info' => :'nameInfo',
        :'other_fields' => :'otherFields',
        :'personal_info' => :'personalInfo',
        :'photo' => :'photo',
        :'physical_addresses' => :'physicalAddresses',
        :'professional_info' => :'professionalInfo',
        :'telephones' => :'telephones'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'attachments' => :'Array<MapiAttachmentDto>',
        :'billing' => :'String',
        :'body' => :'String',
        :'body_html' => :'String',
        :'body_rtf' => :'String',
        :'body_type' => :'String',
        :'categories' => :'Array<String>',
        :'companies' => :'Array<String>',
        :'item_id' => :'String',
        :'message_class' => :'String',
        :'mileage' => :'String',
        :'recipients' => :'Array<MapiRecipientDto>',
        :'sensitivity' => :'String',
        :'subject' => :'String',
        :'subject_prefix' => :'String',
        :'properties' => :'Array<MapiPropertyDto>',
        :'discriminator' => :'String',
        :'electronic_addresses' => :'MapiContactElectronicAddressPropertySetDto',
        :'events' => :'MapiContactEventPropertySetDto',
        :'name_info' => :'MapiContactNamePropertySetDto',
        :'other_fields' => :'MapiContactOtherPropertySetDto',
        :'personal_info' => :'MapiContactPersonalInfoPropertySetDto',
        :'photo' => :'MapiContactPhotoDto',
        :'physical_addresses' => :'MapiContactPhysicalAddressPropertySetDto',
        :'professional_info' => :'MapiContactProfessionalPropertySetDto',
        :'telephones' => :'MapiContactTelephonePropertySetDto'
      }
    end

    # Initializes the object
    # @param [Array<MapiAttachmentDto>] attachments Message item attachments.             
    # @param [String] billing Billing information associated with an item.             
    # @param [String] body Message text.             
    # @param [String] body_html Gets the BodyRtf of the message converted to HTML, if present, otherwise an empty string.             
    # @param [String] body_rtf RTF formatted message text.             
    # @param [String] body_type The content type of message body. Enum, available values: PlainText, Html, Rtf
    # @param [Array<String>] categories Contains keywords or categories for the message object.             
    # @param [Array<String>] companies Contains the names of the companies that are associated with an item.             
    # @param [String] item_id The item id, uses with a server.             
    # @param [String] message_class Case-sensitive string that identifies the sender-defined message class, such as IPM.Note. The message class specifies the type, purpose, or content of the message.             
    # @param [String] mileage Contains the mileage information that is associated with an item.             
    # @param [Array<MapiRecipientDto>] recipients Recipients of the message.             
    # @param [String] sensitivity Contains values that indicate the message sensitivity. Enum, available values: None, Personal, Private, CompanyConfidential
    # @param [String] subject Subject of the message.             
    # @param [String] subject_prefix Subject prefix that typically indicates some action on a message, such as \"FW: \" for forwarding.             
    # @param [Array<MapiPropertyDto>] properties List of MAPI properties             
    # @param [MapiContactElectronicAddressPropertySetDto] electronic_addresses Specify properties for up to three different e-mail addresses and three different fax addresses.             
    # @param [MapiContactEventPropertySetDto] events Specify events associated with a contact.             
    # @param [MapiContactNamePropertySetDto] name_info The properties are used to specify the name of the person represented by the contact.             
    # @param [MapiContactOtherPropertySetDto] other_fields Specify other fields of contact.             
    # @param [MapiContactPersonalInfoPropertySetDto] personal_info Specify other additional contact information.             
    # @param [MapiContactPhotoDto] photo Contact photo.             
    # @param [MapiContactPhysicalAddressPropertySetDto] physical_addresses Specify three physical addresses: Home Address, Work Address, and Other Address. One of the addresses can be marked as the Mailing Address.             
    # @param [MapiContactProfessionalPropertySetDto] professional_info Properties are used to store professional details for the person represented by the contact.             
    # @param [MapiContactTelephonePropertySetDto] telephones Specify telephone numbers for the contact.             
    def initialize(
      attachments: nil,
      billing: nil,
      body: nil,
      body_html: nil,
      body_rtf: nil,
      body_type: nil,
      categories: nil,
      companies: nil,
      item_id: nil,
      message_class: nil,
      mileage: nil,
      recipients: nil,
      sensitivity: nil,
      subject: nil,
      subject_prefix: nil,
      properties: nil,
      electronic_addresses: nil,
      events: nil,
      name_info: nil,
      other_fields: nil,
      personal_info: nil,
      photo: nil,
      physical_addresses: nil,
      professional_info: nil,
      telephones: nil)
      self.attachments = attachments if attachments
      self.billing = billing if billing
      self.body = body if body
      self.body_html = body_html if body_html
      self.body_rtf = body_rtf if body_rtf
      self.body_type = body_type if body_type
      self.categories = categories if categories
      self.companies = companies if companies
      self.item_id = item_id if item_id
      self.message_class = message_class if message_class
      self.mileage = mileage if mileage
      self.recipients = recipients if recipients
      self.sensitivity = sensitivity if sensitivity
      self.subject = subject if subject
      self.subject_prefix = subject_prefix if subject_prefix
      self.properties = properties if properties
      self.electronic_addresses = electronic_addresses if electronic_addresses
      self.events = events if events
      self.name_info = name_info if name_info
      self.other_fields = other_fields if other_fields
      self.personal_info = personal_info if personal_info
      self.photo = photo if photo
      self.physical_addresses = physical_addresses if physical_addresses
      self.professional_info = professional_info if professional_info
      self.telephones = telephones if telephones
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @body_type.nil?
        invalid_properties.push('invalid value for "body_type", body_type cannot be nil.')
      end

      if @sensitivity.nil?
        invalid_properties.push('invalid value for "sensitivity", sensitivity cannot be nil.')
      end

      if @discriminator.nil?
        invalid_properties.push('invalid value for "discriminator", discriminator cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @body_type.nil?
      return false if @sensitivity.nil?
      return false if @discriminator.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attachments == o.attachments &&
          billing == o.billing &&
          body == o.body &&
          body_html == o.body_html &&
          body_rtf == o.body_rtf &&
          body_type == o.body_type &&
          categories == o.categories &&
          companies == o.companies &&
          item_id == o.item_id &&
          message_class == o.message_class &&
          mileage == o.mileage &&
          recipients == o.recipients &&
          sensitivity == o.sensitivity &&
          subject == o.subject &&
          subject_prefix == o.subject_prefix &&
          properties == o.properties &&
          discriminator == o.discriminator &&
          electronic_addresses == o.electronic_addresses &&
          events == o.events &&
          name_info == o.name_info &&
          other_fields == o.other_fields &&
          personal_info == o.personal_info &&
          photo == o.photo &&
          physical_addresses == o.physical_addresses &&
          professional_info == o.professional_info &&
          telephones == o.telephones
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [attachments, billing, body, body_html, body_rtf, body_type, categories, companies, item_id, message_class, mileage, recipients, sensitivity, subject, subject_prefix, properties, discriminator, electronic_addresses, events, name_info, other_fields, personal_info, photo, physical_addresses, professional_info, telephones].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        attribute_key = self.class.attribute_map[key]
        attribute_key = (attribute_key[0, 1].downcase + attribute_key[1..-1]).to_sym
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[attribute_key].is_a?(Array)
            self.send("#{key}=", attributes[attribute_key].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[attribute_key].nil?
          self.send("#{key}=", _deserialize(type, attributes[attribute_key]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        sub_type = value[:type] || value[:discriminator] || type
        if AsposeEmailCloud.const_defined?(sub_type)
          type = sub_type
        end
        temp_model = AsposeEmailCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
