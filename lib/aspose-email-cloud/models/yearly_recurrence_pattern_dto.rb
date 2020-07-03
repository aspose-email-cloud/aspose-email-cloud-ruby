#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="YearlyRecurrencePatternDto.rb">
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
  # Yearly recurrence pattern.             
  class YearlyRecurrencePatternDto
    # Number of recurrence units.             
    # @return [Integer]
    attr_accessor :interval

    # Number of occurrences of the recurrence pattern.             
    # @return [Integer]
    attr_accessor :occurs

    # End date.             
    # @return [DateTime]
    attr_accessor :end_date

    # Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay
    # @return [String]
    attr_accessor :week_start

    
    # @return [String]
    def discriminator #getter method
      self.class.name.split('::').last
    end

    def discriminator=(discriminator) #setter method, parameter ignored
      @discriminator = self.class.name.split('::').last
    end

    # Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay
    # @return [String]
    attr_accessor :start_day

    # Represents a calendar month. Enum, available values: None, January, February, March, April, May, June, July, August, September, October, November, December
    # @return [String]
    attr_accessor :start_month

    # Start offset.             
    # @return [Integer]
    attr_accessor :start_offset

    # Day positions, typically found in a month. Enum, available values: None, First, Second, Third, Fourth, Last
    # @return [String]
    attr_accessor :start_position

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'interval' => :'interval',
        :'occurs' => :'occurs',
        :'end_date' => :'endDate',
        :'week_start' => :'weekStart',
        :'discriminator' => :'discriminator',
        :'start_day' => :'startDay',
        :'start_month' => :'startMonth',
        :'start_offset' => :'startOffset',
        :'start_position' => :'startPosition'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'interval' => :'Integer',
        :'occurs' => :'Integer',
        :'end_date' => :'DateTime',
        :'week_start' => :'String',
        :'discriminator' => :'String',
        :'start_day' => :'String',
        :'start_month' => :'String',
        :'start_offset' => :'Integer',
        :'start_position' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.has_key?(:'occurs')
        self.occurs = attributes[:'occurs']
      end

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'weekStart')
        self.week_start = attributes[:'weekStart']
      end

      if attributes.has_key?(:'discriminator')
        @discriminator = self.class.name.split('::').last
      end

      if attributes.has_key?(:'startDay')
        self.start_day = attributes[:'startDay']
      end

      if attributes.has_key?(:'startMonth')
        self.start_month = attributes[:'startMonth']
      end

      if attributes.has_key?(:'startOffset')
        self.start_offset = attributes[:'startOffset']
      end

      if attributes.has_key?(:'startPosition')
        self.start_position = attributes[:'startPosition']
      end
    end

    # Initializes the object
    # @param [Integer] interval Number of recurrence units.             
    # @param [Integer] occurs Number of occurrences of the recurrence pattern.             
    # @param [DateTime] end_date End date.             
    # @param [String] week_start Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay
    # @param [String] discriminator 
    # @param [String] start_day Represents the day of the week. Enum, available values: None, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday, Day, WeekDay, WeekendDay
    # @param [String] start_month Represents a calendar month. Enum, available values: None, January, February, March, April, May, June, July, August, September, October, November, December
    # @param [Integer] start_offset Start offset.             
    # @param [String] start_position Day positions, typically found in a month. Enum, available values: None, First, Second, Third, Fourth, Last
    def initialize(interval=nil, occurs=nil, end_date=nil, week_start=nil, discriminator=nil, start_day=nil, start_month=nil, start_offset=nil, start_position=nil)
      self.interval = interval if interval
      self.occurs = occurs if occurs
      self.end_date = end_date if end_date
      self.week_start = week_start if week_start
      @discriminator = self.class.name.split('::').last
      self.start_day = start_day if start_day
      self.start_month = start_month if start_month
      self.start_offset = start_offset if start_offset
      self.start_position = start_position if start_position
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @interval.nil?
        invalid_properties.push('invalid value for "interval", interval cannot be nil.')
      end

      if @occurs.nil?
        invalid_properties.push('invalid value for "occurs", occurs cannot be nil.')
      end

      if @end_date.nil?
        invalid_properties.push('invalid value for "end_date", end_date cannot be nil.')
      end

      if @week_start.nil?
        invalid_properties.push('invalid value for "week_start", week_start cannot be nil.')
      end

      if @discriminator.nil?
        invalid_properties.push('invalid value for "discriminator", discriminator cannot be nil.')
      end

      if @start_day.nil?
        invalid_properties.push('invalid value for "start_day", start_day cannot be nil.')
      end

      if @start_month.nil?
        invalid_properties.push('invalid value for "start_month", start_month cannot be nil.')
      end

      if @start_offset.nil?
        invalid_properties.push('invalid value for "start_offset", start_offset cannot be nil.')
      end

      if @start_position.nil?
        invalid_properties.push('invalid value for "start_position", start_position cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @interval.nil?
      return false if @occurs.nil?
      return false if @end_date.nil?
      return false if @week_start.nil?
      return false if @discriminator.nil?
      return false if @start_day.nil?
      return false if @start_month.nil?
      return false if @start_offset.nil?
      return false if @start_position.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          interval == o.interval &&
          occurs == o.occurs &&
          end_date == o.end_date &&
          week_start == o.week_start &&
          discriminator == o.discriminator &&
          start_day == o.start_day &&
          start_month == o.start_month &&
          start_offset == o.start_offset &&
          start_position == o.start_position
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [interval, occurs, end_date, week_start, discriminator, start_day, start_month, start_offset, start_position].hash
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
