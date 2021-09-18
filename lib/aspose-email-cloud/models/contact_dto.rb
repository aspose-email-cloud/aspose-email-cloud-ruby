#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="ContactDto.rb">
#    Copyright (c) 2018-2020 Aspose Pty Ltd. All rights reserved.
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
  # VCard document representation.             
  class ContactDto
    # Associated persons.             
    # @return [Array<AssociatedPerson>]
    attr_accessor :associated_persons
    # Document attachments.             
    # @return [Array<Attachment>]
    attr_accessor :attachments
    # Company name.             
    # @return [String]
    attr_accessor :company_name
    # Computer network.             
    # @return [String]
    attr_accessor :computer_network_name
    # Customer id.             
    # @return [String]
    attr_accessor :customer_id
    # Department name.             
    # @return [String]
    attr_accessor :department_name
    # Display name.             
    # @return [String]
    attr_accessor :display_name
    # Person's email addresses.             
    # @return [Array<EmailAddress>]
    attr_accessor :email_addresses
    # Person's events.             
    # @return [Array<CustomerEvent>]
    attr_accessor :events
    # A name used for sorting.             
    # @return [String]
    attr_accessor :file_as
    # Specifies how to generate and recompute the value of the dispidFileAs property when other contact name properties change. Coincides MS-OXPROPS revision 16.2 from 7/31/2014. Enum, available values: Empty, DisplayName, FirstName, LastName, Organization, LastFirstMiddle, OrgLastFirstMiddle, LastFirstMiddleOrg, LastFirstMiddle2, LastFirstMiddle3, OrgLastFirstMiddle2, OrgLastFirstMiddle3, LastFirstMiddleOrg2, LastFirstMiddleOrg3, LastFirstMiddleGen, FirstMiddleLastGen, LastFirstMiddleGen2, BestMatch, AccordingToLocale, None
    # @return [String]
    attr_accessor :file_as_mapping
    # URL path from which a client can retrieve free/busy information for the contact as an iCal file.             
    # @return [String]
    attr_accessor :free_busy_location
    # Enum defines gender of a person. Enum, available values: Unspecified, Female, Male
    # @return [String]
    attr_accessor :gender
    # Person's given name.             
    # @return [String]
    attr_accessor :given_name
    # Government id number.             
    # @return [String]
    attr_accessor :government_id_number
    # Person's hobbies.             
    # @return [String]
    attr_accessor :hobbies
    # Person's initials.             
    # @return [String]
    attr_accessor :initials
    # Person's instant messenger addresses.             
    # @return [Array<InstantMessengerAddress>]
    attr_accessor :instant_messengers
    # Person's job title.             
    # @return [String]
    attr_accessor :job_title
    # Language.             
    # @return [String]
    attr_accessor :language
    # Person's location.             
    # @return [String]
    attr_accessor :location
    # Person's middle name.             
    # @return [String]
    attr_accessor :middle_name
    # Person's nickname.             
    # @return [String]
    attr_accessor :nickname
    # Notes.             
    # @return [String]
    attr_accessor :notes
    # Defines format of a text. Enum, available values: Text, Html
    # @return [String]
    attr_accessor :notes_format
    # Office location.             
    # @return [String]
    attr_accessor :office_location
    # Contains an identifier for the mail user used within the mail user's organization.             
    # @return [String]
    attr_accessor :organizational_id_number
    # Person's phone numbers.             
    # @return [Array<PhoneNumber>]
    attr_accessor :phone_numbers
    # Person's photo.             
    # @return [ContactPhoto]
    attr_accessor :photo
    # Person's physical addresses.             
    # @return [Array<PostalAddress>]
    attr_accessor :physical_addresses
    # Encoding for all text properties.             
    # @return [String]
    attr_accessor :preferred_text_encoding
    # A prefix of a full name such like Mr.(mister), Dr.(doctor) and so on.             
    # @return [String]
    attr_accessor :prefix
    # A job position of a person in a company.             
    # @return [String]
    attr_accessor :profession
    # A suffix of a full name such like Jr.(junior), Sr.(senior) and so on.             
    # @return [String]
    attr_accessor :suffix
    # Person's surname.             
    # @return [String]
    attr_accessor :surname
    # Person's urls.             
    # @return [Array<Url>]
    attr_accessor :urls
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'associated_persons' => :'associatedPersons',
        :'attachments' => :'attachments',
        :'company_name' => :'companyName',
        :'computer_network_name' => :'computerNetworkName',
        :'customer_id' => :'customerId',
        :'department_name' => :'departmentName',
        :'display_name' => :'displayName',
        :'email_addresses' => :'emailAddresses',
        :'events' => :'events',
        :'file_as' => :'fileAs',
        :'file_as_mapping' => :'fileAsMapping',
        :'free_busy_location' => :'freeBusyLocation',
        :'gender' => :'gender',
        :'given_name' => :'givenName',
        :'government_id_number' => :'governmentIdNumber',
        :'hobbies' => :'hobbies',
        :'initials' => :'initials',
        :'instant_messengers' => :'instantMessengers',
        :'job_title' => :'jobTitle',
        :'language' => :'language',
        :'location' => :'location',
        :'middle_name' => :'middleName',
        :'nickname' => :'nickname',
        :'notes' => :'notes',
        :'notes_format' => :'notesFormat',
        :'office_location' => :'officeLocation',
        :'organizational_id_number' => :'organizationalIdNumber',
        :'phone_numbers' => :'phoneNumbers',
        :'photo' => :'photo',
        :'physical_addresses' => :'physicalAddresses',
        :'preferred_text_encoding' => :'preferredTextEncoding',
        :'prefix' => :'prefix',
        :'profession' => :'profession',
        :'suffix' => :'suffix',
        :'surname' => :'surname',
        :'urls' => :'urls'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'associated_persons' => :'Array<AssociatedPerson>',
        :'attachments' => :'Array<Attachment>',
        :'company_name' => :'String',
        :'computer_network_name' => :'String',
        :'customer_id' => :'String',
        :'department_name' => :'String',
        :'display_name' => :'String',
        :'email_addresses' => :'Array<EmailAddress>',
        :'events' => :'Array<CustomerEvent>',
        :'file_as' => :'String',
        :'file_as_mapping' => :'String',
        :'free_busy_location' => :'String',
        :'gender' => :'String',
        :'given_name' => :'String',
        :'government_id_number' => :'String',
        :'hobbies' => :'String',
        :'initials' => :'String',
        :'instant_messengers' => :'Array<InstantMessengerAddress>',
        :'job_title' => :'String',
        :'language' => :'String',
        :'location' => :'String',
        :'middle_name' => :'String',
        :'nickname' => :'String',
        :'notes' => :'String',
        :'notes_format' => :'String',
        :'office_location' => :'String',
        :'organizational_id_number' => :'String',
        :'phone_numbers' => :'Array<PhoneNumber>',
        :'photo' => :'ContactPhoto',
        :'physical_addresses' => :'Array<PostalAddress>',
        :'preferred_text_encoding' => :'String',
        :'prefix' => :'String',
        :'profession' => :'String',
        :'suffix' => :'String',
        :'surname' => :'String',
        :'urls' => :'Array<Url>'
      }
    end

    # Initializes the object
    # @param [Array<AssociatedPerson>] associated_persons Associated persons.             
    # @param [Array<Attachment>] attachments Document attachments.             
    # @param [String] company_name Company name.             
    # @param [String] computer_network_name Computer network.             
    # @param [String] customer_id Customer id.             
    # @param [String] department_name Department name.             
    # @param [String] display_name Display name.             
    # @param [Array<EmailAddress>] email_addresses Person's email addresses.             
    # @param [Array<CustomerEvent>] events Person's events.             
    # @param [String] file_as A name used for sorting.             
    # @param [String] file_as_mapping Specifies how to generate and recompute the value of the dispidFileAs property when other contact name properties change. Coincides MS-OXPROPS revision 16.2 from 7/31/2014. Enum, available values: Empty, DisplayName, FirstName, LastName, Organization, LastFirstMiddle, OrgLastFirstMiddle, LastFirstMiddleOrg, LastFirstMiddle2, LastFirstMiddle3, OrgLastFirstMiddle2, OrgLastFirstMiddle3, LastFirstMiddleOrg2, LastFirstMiddleOrg3, LastFirstMiddleGen, FirstMiddleLastGen, LastFirstMiddleGen2, BestMatch, AccordingToLocale, None
    # @param [String] free_busy_location URL path from which a client can retrieve free/busy information for the contact as an iCal file.             
    # @param [String] gender Enum defines gender of a person. Enum, available values: Unspecified, Female, Male
    # @param [String] given_name Person's given name.             
    # @param [String] government_id_number Government id number.             
    # @param [String] hobbies Person's hobbies.             
    # @param [String] initials Person's initials.             
    # @param [Array<InstantMessengerAddress>] instant_messengers Person's instant messenger addresses.             
    # @param [String] job_title Person's job title.             
    # @param [String] language Language.             
    # @param [String] location Person's location.             
    # @param [String] middle_name Person's middle name.             
    # @param [String] nickname Person's nickname.             
    # @param [String] notes Notes.             
    # @param [String] notes_format Defines format of a text. Enum, available values: Text, Html
    # @param [String] office_location Office location.             
    # @param [String] organizational_id_number Contains an identifier for the mail user used within the mail user's organization.             
    # @param [Array<PhoneNumber>] phone_numbers Person's phone numbers.             
    # @param [ContactPhoto] photo Person's photo.             
    # @param [Array<PostalAddress>] physical_addresses Person's physical addresses.             
    # @param [String] preferred_text_encoding Encoding for all text properties.             
    # @param [String] prefix A prefix of a full name such like Mr.(mister), Dr.(doctor) and so on.             
    # @param [String] profession A job position of a person in a company.             
    # @param [String] suffix A suffix of a full name such like Jr.(junior), Sr.(senior) and so on.             
    # @param [String] surname Person's surname.             
    # @param [Array<Url>] urls Person's urls.             
    def initialize(
      associated_persons: nil,
      attachments: nil,
      company_name: nil,
      computer_network_name: nil,
      customer_id: nil,
      department_name: nil,
      display_name: nil,
      email_addresses: nil,
      events: nil,
      file_as: nil,
      file_as_mapping: nil,
      free_busy_location: nil,
      gender: nil,
      given_name: nil,
      government_id_number: nil,
      hobbies: nil,
      initials: nil,
      instant_messengers: nil,
      job_title: nil,
      language: nil,
      location: nil,
      middle_name: nil,
      nickname: nil,
      notes: nil,
      notes_format: nil,
      office_location: nil,
      organizational_id_number: nil,
      phone_numbers: nil,
      photo: nil,
      physical_addresses: nil,
      preferred_text_encoding: nil,
      prefix: nil,
      profession: nil,
      suffix: nil,
      surname: nil,
      urls: nil)
      self.associated_persons = associated_persons if associated_persons
      self.attachments = attachments if attachments
      self.company_name = company_name if company_name
      self.computer_network_name = computer_network_name if computer_network_name
      self.customer_id = customer_id if customer_id
      self.department_name = department_name if department_name
      self.display_name = display_name if display_name
      self.email_addresses = email_addresses if email_addresses
      self.events = events if events
      self.file_as = file_as if file_as
      self.file_as_mapping = file_as_mapping if file_as_mapping
      self.free_busy_location = free_busy_location if free_busy_location
      self.gender = gender if gender
      self.given_name = given_name if given_name
      self.government_id_number = government_id_number if government_id_number
      self.hobbies = hobbies if hobbies
      self.initials = initials if initials
      self.instant_messengers = instant_messengers if instant_messengers
      self.job_title = job_title if job_title
      self.language = language if language
      self.location = location if location
      self.middle_name = middle_name if middle_name
      self.nickname = nickname if nickname
      self.notes = notes if notes
      self.notes_format = notes_format if notes_format
      self.office_location = office_location if office_location
      self.organizational_id_number = organizational_id_number if organizational_id_number
      self.phone_numbers = phone_numbers if phone_numbers
      self.photo = photo if photo
      self.physical_addresses = physical_addresses if physical_addresses
      self.preferred_text_encoding = preferred_text_encoding if preferred_text_encoding
      self.prefix = prefix if prefix
      self.profession = profession if profession
      self.suffix = suffix if suffix
      self.surname = surname if surname
      self.urls = urls if urls
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @file_as_mapping.nil?
        invalid_properties.push('invalid value for "file_as_mapping", file_as_mapping cannot be nil.')
      end

      if @gender.nil?
        invalid_properties.push('invalid value for "gender", gender cannot be nil.')
      end

      if @notes_format.nil?
        invalid_properties.push('invalid value for "notes_format", notes_format cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @file_as_mapping.nil?
      return false if @gender.nil?
      return false if @notes_format.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          associated_persons == o.associated_persons &&
          attachments == o.attachments &&
          company_name == o.company_name &&
          computer_network_name == o.computer_network_name &&
          customer_id == o.customer_id &&
          department_name == o.department_name &&
          display_name == o.display_name &&
          email_addresses == o.email_addresses &&
          events == o.events &&
          file_as == o.file_as &&
          file_as_mapping == o.file_as_mapping &&
          free_busy_location == o.free_busy_location &&
          gender == o.gender &&
          given_name == o.given_name &&
          government_id_number == o.government_id_number &&
          hobbies == o.hobbies &&
          initials == o.initials &&
          instant_messengers == o.instant_messengers &&
          job_title == o.job_title &&
          language == o.language &&
          location == o.location &&
          middle_name == o.middle_name &&
          nickname == o.nickname &&
          notes == o.notes &&
          notes_format == o.notes_format &&
          office_location == o.office_location &&
          organizational_id_number == o.organizational_id_number &&
          phone_numbers == o.phone_numbers &&
          photo == o.photo &&
          physical_addresses == o.physical_addresses &&
          preferred_text_encoding == o.preferred_text_encoding &&
          prefix == o.prefix &&
          profession == o.profession &&
          suffix == o.suffix &&
          surname == o.surname &&
          urls == o.urls
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [associated_persons, attachments, company_name, computer_network_name, customer_id, department_name, display_name, email_addresses, events, file_as, file_as_mapping, free_busy_location, gender, given_name, government_id_number, hobbies, initials, instant_messengers, job_title, language, location, middle_name, nickname, notes, notes_format, office_location, organizational_id_number, phone_numbers, photo, physical_addresses, preferred_text_encoding, prefix, profession, suffix, surname, urls].hash
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
