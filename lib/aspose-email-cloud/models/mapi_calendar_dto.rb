#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiCalendarDto.rb">
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
  # Represents the mapi calendar object             
  class MapiCalendarDto
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

    
    # @return [String]
    def discriminator #getter method
      self.class.name.split('::').last
    end

    def discriminator=(discriminator) #setter method, parameter ignored
      @discriminator = self.class.name.split('::').last
    end

    # Value indicating whether a Meeting Response object is a counter proposal.             
    # @return [BOOLEAN]
    attr_accessor :appointment_counter_proposal

    # Attendees             
    # @return [MapiCalendarAttendeesDto]
    attr_accessor :attendees

    # Enumerates the mapi calendar possible busy status Enum, available values: Free, Tentative, Busy, OutOfOffice
    # @return [String]
    attr_accessor :busy_status

    # Actions the user has taken on this Meeting object.              Items: Enumerates the actions the user can taken on the Meeting object Enum, available values: Manager, Delegate, DeletedWithNoResponse, DeletedExceptionWithNoResponse, RespondedTentative, RespondedAccept, RespondedDecline, ModifiedStartTime, ModifiedEndTime, ModifiedLocation, RespondedExceptionDecline, Canceled, ExceptionCanceled
    # @return [Array<String>]
    attr_accessor :client_intent

    # End date and time of the event. If the date is not set, default value for DateTime is returned.             
    # @return [DateTime]
    attr_accessor :end_date

    # Time zone information that indicates the time zone of the EndDate property.             
    # @return [MapiCalendarTimeZoneDto]
    attr_accessor :end_date_time_zone

    # Value indicating whether the event is an all-day event.             
    # @return [BOOLEAN]
    attr_accessor :is_all_day

    # Categories of the calendar object.             
    # @return [String]
    attr_accessor :key_words

    # Location of the event.             
    # @return [String]
    attr_accessor :location

    # Recurrence properties.             
    # @return [MapiCalendarEventRecurrenceDto]
    attr_accessor :recurrence

    # Interval, in minutes, between the time at which the reminder first becomes overdue and the start time of the Calendar object.             
    # @return [Integer]
    attr_accessor :reminder_delta

    # Full path of the sound that a client SHOULD play when the reminder becomes overdue.             
    # @return [String]
    attr_accessor :reminder_file_parameter

    # Value indicating whether a reminder is set on the object.             
    # @return [BOOLEAN]
    attr_accessor :reminder_set

    # Sequence number.             
    # @return [Integer]
    attr_accessor :sequence

    # Start date and time of the event. If the date is not set, default value for DateTime is returned.             
    # @return [DateTime]
    attr_accessor :start_date

    # Time zone information that indicates the time zone of the StartDate property.             
    # @return [MapiCalendarTimeZoneDto]
    attr_accessor :start_date_time_zone

    # Unique identifier.             
    # @return [String]
    attr_accessor :uid

    # Organizer             
    # @return [MapiElectronicAddressDto]
    attr_accessor :organizer

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
        :'appointment_counter_proposal' => :'appointmentCounterProposal',
        :'attendees' => :'attendees',
        :'busy_status' => :'busyStatus',
        :'client_intent' => :'clientIntent',
        :'end_date' => :'endDate',
        :'end_date_time_zone' => :'endDateTimeZone',
        :'is_all_day' => :'isAllDay',
        :'key_words' => :'keyWords',
        :'location' => :'location',
        :'recurrence' => :'recurrence',
        :'reminder_delta' => :'reminderDelta',
        :'reminder_file_parameter' => :'reminderFileParameter',
        :'reminder_set' => :'reminderSet',
        :'sequence' => :'sequence',
        :'start_date' => :'startDate',
        :'start_date_time_zone' => :'startDateTimeZone',
        :'uid' => :'uid',
        :'organizer' => :'organizer'
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
        :'appointment_counter_proposal' => :'BOOLEAN',
        :'attendees' => :'MapiCalendarAttendeesDto',
        :'busy_status' => :'String',
        :'client_intent' => :'Array<String>',
        :'end_date' => :'DateTime',
        :'end_date_time_zone' => :'MapiCalendarTimeZoneDto',
        :'is_all_day' => :'BOOLEAN',
        :'key_words' => :'String',
        :'location' => :'String',
        :'recurrence' => :'MapiCalendarEventRecurrenceDto',
        :'reminder_delta' => :'Integer',
        :'reminder_file_parameter' => :'String',
        :'reminder_set' => :'BOOLEAN',
        :'sequence' => :'Integer',
        :'start_date' => :'DateTime',
        :'start_date_time_zone' => :'MapiCalendarTimeZoneDto',
        :'uid' => :'String',
        :'organizer' => :'MapiElectronicAddressDto'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.has_key?(:'billing')
        self.billing = attributes[:'billing']
      end

      if attributes.has_key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.has_key?(:'bodyHtml')
        self.body_html = attributes[:'bodyHtml']
      end

      if attributes.has_key?(:'bodyRtf')
        self.body_rtf = attributes[:'bodyRtf']
      end

      if attributes.has_key?(:'bodyType')
        self.body_type = attributes[:'bodyType']
      end

      if attributes.has_key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.has_key?(:'companies')
        if (value = attributes[:'companies']).is_a?(Array)
          self.companies = value
        end
      end

      if attributes.has_key?(:'itemId')
        self.item_id = attributes[:'itemId']
      end

      if attributes.has_key?(:'messageClass')
        self.message_class = attributes[:'messageClass']
      end

      if attributes.has_key?(:'mileage')
        self.mileage = attributes[:'mileage']
      end

      if attributes.has_key?(:'recipients')
        if (value = attributes[:'recipients']).is_a?(Array)
          self.recipients = value
        end
      end

      if attributes.has_key?(:'sensitivity')
        self.sensitivity = attributes[:'sensitivity']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'subjectPrefix')
        self.subject_prefix = attributes[:'subjectPrefix']
      end

      if attributes.has_key?(:'properties')
        if (value = attributes[:'properties']).is_a?(Array)
          self.properties = value
        end
      end

      if attributes.has_key?(:'discriminator')
        @discriminator = self.class.name.split('::').last
      end

      if attributes.has_key?(:'appointmentCounterProposal')
        self.appointment_counter_proposal = attributes[:'appointmentCounterProposal']
      end

      if attributes.has_key?(:'attendees')
        self.attendees = attributes[:'attendees']
      end

      if attributes.has_key?(:'busyStatus')
        self.busy_status = attributes[:'busyStatus']
      end

      if attributes.has_key?(:'clientIntent')
        if (value = attributes[:'clientIntent']).is_a?(Array)
          self.client_intent = value
        end
      end

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'endDateTimeZone')
        self.end_date_time_zone = attributes[:'endDateTimeZone']
      end

      if attributes.has_key?(:'isAllDay')
        self.is_all_day = attributes[:'isAllDay']
      end

      if attributes.has_key?(:'keyWords')
        self.key_words = attributes[:'keyWords']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'recurrence')
        self.recurrence = attributes[:'recurrence']
      end

      if attributes.has_key?(:'reminderDelta')
        self.reminder_delta = attributes[:'reminderDelta']
      end

      if attributes.has_key?(:'reminderFileParameter')
        self.reminder_file_parameter = attributes[:'reminderFileParameter']
      end

      if attributes.has_key?(:'reminderSet')
        self.reminder_set = attributes[:'reminderSet']
      end

      if attributes.has_key?(:'sequence')
        self.sequence = attributes[:'sequence']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'startDateTimeZone')
        self.start_date_time_zone = attributes[:'startDateTimeZone']
      end

      if attributes.has_key?(:'uid')
        self.uid = attributes[:'uid']
      end

      if attributes.has_key?(:'organizer')
        self.organizer = attributes[:'organizer']
      end
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
    # @param [String] discriminator 
    # @param [BOOLEAN] appointment_counter_proposal Value indicating whether a Meeting Response object is a counter proposal.             
    # @param [MapiCalendarAttendeesDto] attendees Attendees             
    # @param [String] busy_status Enumerates the mapi calendar possible busy status Enum, available values: Free, Tentative, Busy, OutOfOffice
    # @param [Array<String>] client_intent Actions the user has taken on this Meeting object.              Items: Enumerates the actions the user can taken on the Meeting object Enum, available values: Manager, Delegate, DeletedWithNoResponse, DeletedExceptionWithNoResponse, RespondedTentative, RespondedAccept, RespondedDecline, ModifiedStartTime, ModifiedEndTime, ModifiedLocation, RespondedExceptionDecline, Canceled, ExceptionCanceled
    # @param [DateTime] end_date End date and time of the event. If the date is not set, default value for DateTime is returned.             
    # @param [MapiCalendarTimeZoneDto] end_date_time_zone Time zone information that indicates the time zone of the EndDate property.             
    # @param [BOOLEAN] is_all_day Value indicating whether the event is an all-day event.             
    # @param [String] key_words Categories of the calendar object.             
    # @param [String] location Location of the event.             
    # @param [MapiCalendarEventRecurrenceDto] recurrence Recurrence properties.             
    # @param [Integer] reminder_delta Interval, in minutes, between the time at which the reminder first becomes overdue and the start time of the Calendar object.             
    # @param [String] reminder_file_parameter Full path of the sound that a client SHOULD play when the reminder becomes overdue.             
    # @param [BOOLEAN] reminder_set Value indicating whether a reminder is set on the object.             
    # @param [Integer] sequence Sequence number.             
    # @param [DateTime] start_date Start date and time of the event. If the date is not set, default value for DateTime is returned.             
    # @param [MapiCalendarTimeZoneDto] start_date_time_zone Time zone information that indicates the time zone of the StartDate property.             
    # @param [String] uid Unique identifier.             
    # @param [MapiElectronicAddressDto] organizer Organizer             
    def initialize(attachments=nil, billing=nil, body=nil, body_html=nil, body_rtf=nil, body_type=nil, categories=nil, companies=nil, item_id=nil, message_class=nil, mileage=nil, recipients=nil, sensitivity=nil, subject=nil, subject_prefix=nil, properties=nil, discriminator=nil, appointment_counter_proposal=nil, attendees=nil, busy_status=nil, client_intent=nil, end_date=nil, end_date_time_zone=nil, is_all_day=nil, key_words=nil, location=nil, recurrence=nil, reminder_delta=nil, reminder_file_parameter=nil, reminder_set=nil, sequence=nil, start_date=nil, start_date_time_zone=nil, uid=nil, organizer=nil)
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
      @discriminator = self.class.name.split('::').last
      self.appointment_counter_proposal = appointment_counter_proposal if appointment_counter_proposal
      self.attendees = attendees if attendees
      self.busy_status = busy_status if busy_status
      self.client_intent = client_intent if client_intent
      self.end_date = end_date if end_date
      self.end_date_time_zone = end_date_time_zone if end_date_time_zone
      self.is_all_day = is_all_day if is_all_day
      self.key_words = key_words if key_words
      self.location = location if location
      self.recurrence = recurrence if recurrence
      self.reminder_delta = reminder_delta if reminder_delta
      self.reminder_file_parameter = reminder_file_parameter if reminder_file_parameter
      self.reminder_set = reminder_set if reminder_set
      self.sequence = sequence if sequence
      self.start_date = start_date if start_date
      self.start_date_time_zone = start_date_time_zone if start_date_time_zone
      self.uid = uid if uid
      self.organizer = organizer if organizer
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

      if @appointment_counter_proposal.nil?
        invalid_properties.push('invalid value for "appointment_counter_proposal", appointment_counter_proposal cannot be nil.')
      end

      if @busy_status.nil?
        invalid_properties.push('invalid value for "busy_status", busy_status cannot be nil.')
      end

      if @end_date.nil?
        invalid_properties.push('invalid value for "end_date", end_date cannot be nil.')
      end

      if @is_all_day.nil?
        invalid_properties.push('invalid value for "is_all_day", is_all_day cannot be nil.')
      end

      if @reminder_delta.nil?
        invalid_properties.push('invalid value for "reminder_delta", reminder_delta cannot be nil.')
      end

      if @reminder_set.nil?
        invalid_properties.push('invalid value for "reminder_set", reminder_set cannot be nil.')
      end

      if @sequence.nil?
        invalid_properties.push('invalid value for "sequence", sequence cannot be nil.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @body_type.nil?
      return false if @sensitivity.nil?
      return false if @discriminator.nil?
      return false if @appointment_counter_proposal.nil?
      return false if @busy_status.nil?
      return false if @end_date.nil?
      return false if @is_all_day.nil?
      return false if @reminder_delta.nil?
      return false if @reminder_set.nil?
      return false if @sequence.nil?
      return false if @start_date.nil?
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
          appointment_counter_proposal == o.appointment_counter_proposal &&
          attendees == o.attendees &&
          busy_status == o.busy_status &&
          client_intent == o.client_intent &&
          end_date == o.end_date &&
          end_date_time_zone == o.end_date_time_zone &&
          is_all_day == o.is_all_day &&
          key_words == o.key_words &&
          location == o.location &&
          recurrence == o.recurrence &&
          reminder_delta == o.reminder_delta &&
          reminder_file_parameter == o.reminder_file_parameter &&
          reminder_set == o.reminder_set &&
          sequence == o.sequence &&
          start_date == o.start_date &&
          start_date_time_zone == o.start_date_time_zone &&
          uid == o.uid &&
          organizer == o.organizer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [attachments, billing, body, body_html, body_rtf, body_type, categories, companies, item_id, message_class, mileage, recipients, sensitivity, subject, subject_prefix, properties, discriminator, appointment_counter_proposal, attendees, busy_status, client_intent, end_date, end_date_time_zone, is_all_day, key_words, location, recurrence, reminder_delta, reminder_file_parameter, reminder_set, sequence, start_date, start_date_time_zone, uid, organizer].hash
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
