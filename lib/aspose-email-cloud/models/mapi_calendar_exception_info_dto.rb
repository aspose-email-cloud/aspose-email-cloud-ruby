#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiCalendarExceptionInfoDto.rb">
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
  # An exception specifies changes to an instance of a recurring series.             
  class MapiCalendarExceptionInfoDto
    # Attachments in the recurrence exception.             
    # @return [Array<MapiAttachmentDto>]
    attr_accessor :attachments
    # Body.             
    # @return [String]
    attr_accessor :body
    # Enumerates the mapi calendar possible busy status. Enum, available values: Free, Tentative, Busy, OutOfOffice
    # @return [String]
    attr_accessor :busy_status
    # End date.             
    # @return [DateTime]
    attr_accessor :end_date_time
    # Value of this field specifies whether the Exception Embedded Message object contains attachments.             
    # @return [BOOLEAN]
    attr_accessor :has_attachment
    # Location.             
    # @return [String]
    attr_accessor :location
    # Enumerates the appointment state. Enum, available values: Meeting, Received, Canceled
    # @return [String]
    attr_accessor :meeting_type
    # Original start date.             
    # @return [DateTime]
    attr_accessor :original_start_date
    # Override flags.              Items: Specifies what data in the MapiCalendarOverride structure has a value different from the recurring series. Enum, available values: Subject, MeetingType, ReminderDelta, Reminder, Location, BusyStatus, Attachment, Subtype, AppointmentColor, ExceptionalBody
    # @return [Array<String>]
    attr_accessor :override_flags
    # Reminder delta.             
    # @return [Integer]
    attr_accessor :reminder_delta
    # Value for the PidLidReminderSet property.             
    # @return [BOOLEAN]
    attr_accessor :reminder_set
    # Start date.             
    # @return [DateTime]
    attr_accessor :start_date_time
    # Subject.             
    # @return [String]
    attr_accessor :subject
    # SubType.             
    # @return [Integer]
    attr_accessor :sub_type
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attachments' => :'attachments',
        :'body' => :'body',
        :'busy_status' => :'busyStatus',
        :'end_date_time' => :'endDateTime',
        :'has_attachment' => :'hasAttachment',
        :'location' => :'location',
        :'meeting_type' => :'meetingType',
        :'original_start_date' => :'originalStartDate',
        :'override_flags' => :'overrideFlags',
        :'reminder_delta' => :'reminderDelta',
        :'reminder_set' => :'reminderSet',
        :'start_date_time' => :'startDateTime',
        :'subject' => :'subject',
        :'sub_type' => :'subType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'attachments' => :'Array<MapiAttachmentDto>',
        :'body' => :'String',
        :'busy_status' => :'String',
        :'end_date_time' => :'DateTime',
        :'has_attachment' => :'BOOLEAN',
        :'location' => :'String',
        :'meeting_type' => :'String',
        :'original_start_date' => :'DateTime',
        :'override_flags' => :'Array<String>',
        :'reminder_delta' => :'Integer',
        :'reminder_set' => :'BOOLEAN',
        :'start_date_time' => :'DateTime',
        :'subject' => :'String',
        :'sub_type' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Array<MapiAttachmentDto>] attachments Attachments in the recurrence exception.             
    # @param [String] body Body.             
    # @param [String] busy_status Enumerates the mapi calendar possible busy status. Enum, available values: Free, Tentative, Busy, OutOfOffice
    # @param [DateTime] end_date_time End date.             
    # @param [BOOLEAN] has_attachment Value of this field specifies whether the Exception Embedded Message object contains attachments.             
    # @param [String] location Location.             
    # @param [String] meeting_type Enumerates the appointment state. Enum, available values: Meeting, Received, Canceled
    # @param [DateTime] original_start_date Original start date.             
    # @param [Array<String>] override_flags Override flags.              Items: Specifies what data in the MapiCalendarOverride structure has a value different from the recurring series. Enum, available values: Subject, MeetingType, ReminderDelta, Reminder, Location, BusyStatus, Attachment, Subtype, AppointmentColor, ExceptionalBody
    # @param [Integer] reminder_delta Reminder delta.             
    # @param [BOOLEAN] reminder_set Value for the PidLidReminderSet property.             
    # @param [DateTime] start_date_time Start date.             
    # @param [String] subject Subject.             
    # @param [Integer] sub_type SubType.             
    def initialize(
      attachments: nil,
      body: nil,
      busy_status: nil,
      end_date_time: nil,
      has_attachment: nil,
      location: nil,
      meeting_type: nil,
      original_start_date: nil,
      override_flags: nil,
      reminder_delta: nil,
      reminder_set: nil,
      start_date_time: nil,
      subject: nil,
      sub_type: nil)
      self.attachments = attachments if attachments
      self.body = body if body
      self.busy_status = busy_status if busy_status
      self.end_date_time = end_date_time if end_date_time
      self.has_attachment = has_attachment if has_attachment
      self.location = location if location
      self.meeting_type = meeting_type if meeting_type
      self.original_start_date = original_start_date if original_start_date
      self.override_flags = override_flags if override_flags
      self.reminder_delta = reminder_delta if reminder_delta
      self.reminder_set = reminder_set if reminder_set
      self.start_date_time = start_date_time if start_date_time
      self.subject = subject if subject
      self.sub_type = sub_type if sub_type
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @busy_status.nil?
        invalid_properties.push('invalid value for "busy_status", busy_status cannot be nil.')
      end

      if @end_date_time.nil?
        invalid_properties.push('invalid value for "end_date_time", end_date_time cannot be nil.')
      end

      if @has_attachment.nil?
        invalid_properties.push('invalid value for "has_attachment", has_attachment cannot be nil.')
      end

      if @meeting_type.nil?
        invalid_properties.push('invalid value for "meeting_type", meeting_type cannot be nil.')
      end

      if @original_start_date.nil?
        invalid_properties.push('invalid value for "original_start_date", original_start_date cannot be nil.')
      end

      if @reminder_delta.nil?
        invalid_properties.push('invalid value for "reminder_delta", reminder_delta cannot be nil.')
      end

      if @reminder_set.nil?
        invalid_properties.push('invalid value for "reminder_set", reminder_set cannot be nil.')
      end

      if @start_date_time.nil?
        invalid_properties.push('invalid value for "start_date_time", start_date_time cannot be nil.')
      end

      if @sub_type.nil?
        invalid_properties.push('invalid value for "sub_type", sub_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @busy_status.nil?
      return false if @end_date_time.nil?
      return false if @has_attachment.nil?
      return false if @meeting_type.nil?
      return false if @original_start_date.nil?
      return false if @reminder_delta.nil?
      return false if @reminder_set.nil?
      return false if @start_date_time.nil?
      return false if @sub_type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attachments == o.attachments &&
          body == o.body &&
          busy_status == o.busy_status &&
          end_date_time == o.end_date_time &&
          has_attachment == o.has_attachment &&
          location == o.location &&
          meeting_type == o.meeting_type &&
          original_start_date == o.original_start_date &&
          override_flags == o.override_flags &&
          reminder_delta == o.reminder_delta &&
          reminder_set == o.reminder_set &&
          start_date_time == o.start_date_time &&
          subject == o.subject &&
          sub_type == o.sub_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [attachments, body, busy_status, end_date_time, has_attachment, location, meeting_type, original_start_date, override_flags, reminder_delta, reminder_set, start_date_time, subject, sub_type].hash
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
