#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiContactOtherPropertySetDto.rb">
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
  # The properties are used to specify additional properties of contact.             
  class MapiContactOtherPropertySetDto
    # Indicates whether the end-user wants this message object hidden from other users who have access to the message object.             
    # @return [BOOLEAN]
    attr_accessor :private

    # Specifies whether to create a journal for each action associated with this contact.             
    # @return [BOOLEAN]
    attr_accessor :journal

    # Specifies the initial signal time for a reminder.             
    # @return [DateTime]
    attr_accessor :reminder_time

    # Represents the status of a meeting request.             
    # @return [String]
    attr_accessor :reminder_topic

    # Specifies the first field on the contact that is intended for miscellaneous use for the contact.             
    # @return [String]
    attr_accessor :user_field1

    # Specifies the second field on the contact that is intended for miscellaneous use for the contact.             
    # @return [String]
    attr_accessor :user_field2

    # Specifies the third field on the contact that is intended for miscellaneous use for the contact.             
    # @return [String]
    attr_accessor :user_field3

    # Specifies the forth field on the contact that is intended for miscellaneous use for the contact.             
    # @return [String]
    attr_accessor :user_field4

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'private' => :'private',
        :'journal' => :'journal',
        :'reminder_time' => :'reminderTime',
        :'reminder_topic' => :'reminderTopic',
        :'user_field1' => :'userField1',
        :'user_field2' => :'userField2',
        :'user_field3' => :'userField3',
        :'user_field4' => :'userField4'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'private' => :'BOOLEAN',
        :'journal' => :'BOOLEAN',
        :'reminder_time' => :'DateTime',
        :'reminder_topic' => :'String',
        :'user_field1' => :'String',
        :'user_field2' => :'String',
        :'user_field3' => :'String',
        :'user_field4' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'private')
        self.private = attributes[:'private']
      end

      if attributes.has_key?(:'journal')
        self.journal = attributes[:'journal']
      end

      if attributes.has_key?(:'reminderTime')
        self.reminder_time = attributes[:'reminderTime']
      end

      if attributes.has_key?(:'reminderTopic')
        self.reminder_topic = attributes[:'reminderTopic']
      end

      if attributes.has_key?(:'userField1')
        self.user_field1 = attributes[:'userField1']
      end

      if attributes.has_key?(:'userField2')
        self.user_field2 = attributes[:'userField2']
      end

      if attributes.has_key?(:'userField3')
        self.user_field3 = attributes[:'userField3']
      end

      if attributes.has_key?(:'userField4')
        self.user_field4 = attributes[:'userField4']
      end
    end

    # Initializes the object
    # @param [BOOLEAN] private Indicates whether the end-user wants this message object hidden from other users who have access to the message object.             
    # @param [BOOLEAN] journal Specifies whether to create a journal for each action associated with this contact.             
    # @param [DateTime] reminder_time Specifies the initial signal time for a reminder.             
    # @param [String] reminder_topic Represents the status of a meeting request.             
    # @param [String] user_field1 Specifies the first field on the contact that is intended for miscellaneous use for the contact.             
    # @param [String] user_field2 Specifies the second field on the contact that is intended for miscellaneous use for the contact.             
    # @param [String] user_field3 Specifies the third field on the contact that is intended for miscellaneous use for the contact.             
    # @param [String] user_field4 Specifies the forth field on the contact that is intended for miscellaneous use for the contact.             
    def initialize(private=nil, journal=nil, reminder_time=nil, reminder_topic=nil, user_field1=nil, user_field2=nil, user_field3=nil, user_field4=nil)
      self.private = private if private
      self.journal = journal if journal
      self.reminder_time = reminder_time if reminder_time
      self.reminder_topic = reminder_topic if reminder_topic
      self.user_field1 = user_field1 if user_field1
      self.user_field2 = user_field2 if user_field2
      self.user_field3 = user_field3 if user_field3
      self.user_field4 = user_field4 if user_field4
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @private.nil?
        invalid_properties.push('invalid value for "private", private cannot be nil.')
      end

      if @journal.nil?
        invalid_properties.push('invalid value for "journal", journal cannot be nil.')
      end

      if @reminder_time.nil?
        invalid_properties.push('invalid value for "reminder_time", reminder_time cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @private.nil?
      return false if @journal.nil?
      return false if @reminder_time.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          private == o.private &&
          journal == o.journal &&
          reminder_time == o.reminder_time &&
          reminder_topic == o.reminder_topic &&
          user_field1 == o.user_field1 &&
          user_field2 == o.user_field2 &&
          user_field3 == o.user_field3 &&
          user_field4 == o.user_field4
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [private, journal, reminder_time, reminder_topic, user_field1, user_field2, user_field3, user_field4].hash
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
