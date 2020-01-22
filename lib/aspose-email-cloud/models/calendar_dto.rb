#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="CalendarDto.rb">
#    Copyright (c) 2018-2019 Aspose Pty Ltd. All rights reserved.
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
  # iCalendar document representation             
  class CalendarDto
    # Document attachments
    # @return [Array<Attachment>]
    attr_accessor :attachments

    # Event attendees
    # @return [Array<MailAddress>]
    attr_accessor :attendees

    # Description
    # @return [String]
    attr_accessor :description

    # End date
    # @return [DateTime]
    attr_accessor :end_date

    # End time zone
    # @return [String]
    attr_accessor :end_time_zone

    # Appointment flags
    # @return [Array<String>]
    attr_accessor :flags

    # Indicates if description is in HTML format
    # @return [BOOLEAN]
    attr_accessor :is_description_html

    # Location
    # @return [String]
    attr_accessor :location

    # Defines the iCalendar object method type associated with the calendar document. Enum, available values: None, Publish, Request, Reply, Add, Cancel, Refresh, Counter, DeclineCounter
    # @return [String]
    attr_accessor :method

    # Specifies the BUSY status. Enum, available values: NotDefined, Free, Tentative, Busy, Oof
    # @return [String]
    attr_accessor :microsoft_busy_status

    # Specifies the INTENDED status. Enum, available values: NotDefined, Free, Tentative, Busy, Oof
    # @return [String]
    attr_accessor :microsoft_intended_status

    # Optional attendees             
    # @return [Array<MailAddress>]
    attr_accessor :optional_attendees

    # Event organizer             
    # @return [MailAddress]
    attr_accessor :organizer

    # String representation of recurrence pattern (See iCalendar RFC, \"Recurrence rule\" section). For example:               For daily recurrence:         \"FREQ=DAILY;COUNT=10;WKST=MO\"                   For monthly recurrence:         \"BYSETPOS=1;BYDAY=MO,TU,WE,TH,FR;FREQ=MONTHLY;INTERVAL=10;WKST=MO\"                   For yearly recurrence:         \"BYMONTHDAY=30;BYMONTH=1;FREQ=YEARLY;WKST=MO\"                   
    # @return [String]
    attr_accessor :recurrence_string

    # Reminders
    # @return [Array<CalendarReminder>]
    attr_accessor :reminders

    # The sequence id. Read only.
    # @return [String]
    attr_accessor :sequence_id

    # Start date
    # @return [DateTime]
    attr_accessor :start_date

    # Start time zone
    # @return [String]
    attr_accessor :start_time_zone

    # Defines the overall status or confirmation for the calendar document. Enum, available values: NotDefined, Cancelled, Tentative, Confirmed
    # @return [String]
    attr_accessor :status

    # Summary
    # @return [String]
    attr_accessor :summary

    # Specifies whether or not this appointment is intended to be visible in availability searches. Enum, available values: NotDefined, Transparent, Opaque
    # @return [String]
    attr_accessor :transparency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attachments' => :'attachments',
        :'attendees' => :'attendees',
        :'description' => :'description',
        :'end_date' => :'endDate',
        :'end_time_zone' => :'endTimeZone',
        :'flags' => :'flags',
        :'is_description_html' => :'isDescriptionHtml',
        :'location' => :'location',
        :'method' => :'method',
        :'microsoft_busy_status' => :'microsoftBusyStatus',
        :'microsoft_intended_status' => :'microsoftIntendedStatus',
        :'optional_attendees' => :'optionalAttendees',
        :'organizer' => :'organizer',
        :'recurrence_string' => :'recurrenceString',
        :'reminders' => :'reminders',
        :'sequence_id' => :'sequenceId',
        :'start_date' => :'startDate',
        :'start_time_zone' => :'startTimeZone',
        :'status' => :'status',
        :'summary' => :'summary',
        :'transparency' => :'transparency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'attachments' => :'Array<Attachment>',
        :'attendees' => :'Array<MailAddress>',
        :'description' => :'String',
        :'end_date' => :'DateTime',
        :'end_time_zone' => :'String',
        :'flags' => :'Array<String>',
        :'is_description_html' => :'BOOLEAN',
        :'location' => :'String',
        :'method' => :'String',
        :'microsoft_busy_status' => :'String',
        :'microsoft_intended_status' => :'String',
        :'optional_attendees' => :'Array<MailAddress>',
        :'organizer' => :'MailAddress',
        :'recurrence_string' => :'String',
        :'reminders' => :'Array<CalendarReminder>',
        :'sequence_id' => :'String',
        :'start_date' => :'DateTime',
        :'start_time_zone' => :'String',
        :'status' => :'String',
        :'summary' => :'String',
        :'transparency' => :'String'
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

      if attributes.has_key?(:'attendees')
        if (value = attributes[:'attendees']).is_a?(Array)
          self.attendees = value
        end
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'endTimeZone')
        self.end_time_zone = attributes[:'endTimeZone']
      end

      if attributes.has_key?(:'flags')
        if (value = attributes[:'flags']).is_a?(Array)
          self.flags = value
        end
      end

      if attributes.has_key?(:'isDescriptionHtml')
        self.is_description_html = attributes[:'isDescriptionHtml']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.has_key?(:'microsoftBusyStatus')
        self.microsoft_busy_status = attributes[:'microsoftBusyStatus']
      end

      if attributes.has_key?(:'microsoftIntendedStatus')
        self.microsoft_intended_status = attributes[:'microsoftIntendedStatus']
      end

      if attributes.has_key?(:'optionalAttendees')
        if (value = attributes[:'optionalAttendees']).is_a?(Array)
          self.optional_attendees = value
        end
      end

      if attributes.has_key?(:'organizer')
        self.organizer = attributes[:'organizer']
      end

      if attributes.has_key?(:'recurrenceString')
        self.recurrence_string = attributes[:'recurrenceString']
      end

      if attributes.has_key?(:'reminders')
        if (value = attributes[:'reminders']).is_a?(Array)
          self.reminders = value
        end
      end

      if attributes.has_key?(:'sequenceId')
        self.sequence_id = attributes[:'sequenceId']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'startTimeZone')
        self.start_time_zone = attributes[:'startTimeZone']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.has_key?(:'transparency')
        self.transparency = attributes[:'transparency']
      end
    end

    # Initializes the object
    # @param [Array<Attachment>] attachments Document attachments
    # @param [Array<MailAddress>] attendees Event attendees
    # @param [String] description Description
    # @param [DateTime] end_date End date
    # @param [String] end_time_zone End time zone
    # @param [Array<String>] flags Appointment flags
    # @param [BOOLEAN] is_description_html Indicates if description is in HTML format
    # @param [String] location Location
    # @param [String] method Defines the iCalendar object method type associated with the calendar document. Enum, available values: None, Publish, Request, Reply, Add, Cancel, Refresh, Counter, DeclineCounter
    # @param [String] microsoft_busy_status Specifies the BUSY status. Enum, available values: NotDefined, Free, Tentative, Busy, Oof
    # @param [String] microsoft_intended_status Specifies the INTENDED status. Enum, available values: NotDefined, Free, Tentative, Busy, Oof
    # @param [Array<MailAddress>] optional_attendees Optional attendees             
    # @param [MailAddress] organizer Event organizer             
    # @param [String] recurrence_string String representation of recurrence pattern (See iCalendar RFC, \"Recurrence rule\" section). For example:               For daily recurrence:         \"FREQ=DAILY;COUNT=10;WKST=MO\"                   For monthly recurrence:         \"BYSETPOS=1;BYDAY=MO,TU,WE,TH,FR;FREQ=MONTHLY;INTERVAL=10;WKST=MO\"                   For yearly recurrence:         \"BYMONTHDAY=30;BYMONTH=1;FREQ=YEARLY;WKST=MO\"                   
    # @param [Array<CalendarReminder>] reminders Reminders
    # @param [String] sequence_id The sequence id. Read only.
    # @param [DateTime] start_date Start date
    # @param [String] start_time_zone Start time zone
    # @param [String] status Defines the overall status or confirmation for the calendar document. Enum, available values: NotDefined, Cancelled, Tentative, Confirmed
    # @param [String] summary Summary
    # @param [String] transparency Specifies whether or not this appointment is intended to be visible in availability searches. Enum, available values: NotDefined, Transparent, Opaque
    def initialize(attachments=nil, attendees=nil, description=nil, end_date=nil, end_time_zone=nil, flags=nil, is_description_html=nil, location=nil, method=nil, microsoft_busy_status=nil, microsoft_intended_status=nil, optional_attendees=nil, organizer=nil, recurrence_string=nil, reminders=nil, sequence_id=nil, start_date=nil, start_time_zone=nil, status=nil, summary=nil, transparency=nil)
      self.attachments = attachments if attachments
      self.attendees = attendees if attendees
      self.description = description if description
      self.end_date = end_date if end_date
      self.end_time_zone = end_time_zone if end_time_zone
      self.flags = flags if flags
      self.is_description_html = is_description_html if is_description_html
      self.location = location if location
      self.method = method if method
      self.microsoft_busy_status = microsoft_busy_status if microsoft_busy_status
      self.microsoft_intended_status = microsoft_intended_status if microsoft_intended_status
      self.optional_attendees = optional_attendees if optional_attendees
      self.organizer = organizer if organizer
      self.recurrence_string = recurrence_string if recurrence_string
      self.reminders = reminders if reminders
      self.sequence_id = sequence_id if sequence_id
      self.start_date = start_date if start_date
      self.start_time_zone = start_time_zone if start_time_zone
      self.status = status if status
      self.summary = summary if summary
      self.transparency = transparency if transparency
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @attendees.nil?
        invalid_properties.push('invalid value for "attendees", attendees cannot be nil.')
      end

      if @end_date.nil?
        invalid_properties.push('invalid value for "end_date", end_date cannot be nil.')
      end

      if @is_description_html.nil?
        invalid_properties.push('invalid value for "is_description_html", is_description_html cannot be nil.')
      end

      if @location.nil?
        invalid_properties.push('invalid value for "location", location cannot be nil.')
      end

      if @location.to_s.length < 1
        invalid_properties.push('invalid value for "location", the character length must be great than or equal to 1.')
      end

      if @method.nil?
        invalid_properties.push('invalid value for "method", method cannot be nil.')
      end

      if @microsoft_busy_status.nil?
        invalid_properties.push('invalid value for "microsoft_busy_status", microsoft_busy_status cannot be nil.')
      end

      if @microsoft_intended_status.nil?
        invalid_properties.push('invalid value for "microsoft_intended_status", microsoft_intended_status cannot be nil.')
      end

      if @organizer.nil?
        invalid_properties.push('invalid value for "organizer", organizer cannot be nil.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @transparency.nil?
        invalid_properties.push('invalid value for "transparency", transparency cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @attendees.nil?
      return false if @end_date.nil?
      return false if @is_description_html.nil?
      return false if @location.nil?
      return false if @location.to_s.length < 1
      return false if @method.nil?
      return false if @microsoft_busy_status.nil?
      return false if @microsoft_intended_status.nil?
      return false if @organizer.nil?
      return false if @start_date.nil?
      return false if @status.nil?
      return false if @transparency.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] location Value to be assigned
    def location=(location)
      if location.nil?
        fail ArgumentError, 'location cannot be nil'
      end

      if location.to_s.length < 1
        fail ArgumentError, 'invalid value for "location", the character length must be great than or equal to 1.'
      end

      @location = location
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attachments == o.attachments &&
          attendees == o.attendees &&
          description == o.description &&
          end_date == o.end_date &&
          end_time_zone == o.end_time_zone &&
          flags == o.flags &&
          is_description_html == o.is_description_html &&
          location == o.location &&
          method == o.method &&
          microsoft_busy_status == o.microsoft_busy_status &&
          microsoft_intended_status == o.microsoft_intended_status &&
          optional_attendees == o.optional_attendees &&
          organizer == o.organizer &&
          recurrence_string == o.recurrence_string &&
          reminders == o.reminders &&
          sequence_id == o.sequence_id &&
          start_date == o.start_date &&
          start_time_zone == o.start_time_zone &&
          status == o.status &&
          summary == o.summary &&
          transparency == o.transparency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [attachments, attendees, description, end_date, end_time_zone, flags, is_description_html, location, method, microsoft_busy_status, microsoft_intended_status, optional_attendees, organizer, recurrence_string, reminders, sequence_id, start_date, start_time_zone, status, summary, transparency].hash
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
        type = value[:type] || type
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
