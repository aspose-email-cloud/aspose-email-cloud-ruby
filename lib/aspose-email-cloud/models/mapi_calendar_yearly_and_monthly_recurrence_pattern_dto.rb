#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiCalendarYearlyAndMonthlyRecurrencePatternDto.rb">
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
  # Represents the yearly and monthly recurrence pattern of the mapi calendar             
  class MapiCalendarYearlyAndMonthlyRecurrencePatternDto < MapiCalendarRecurrencePatternDto
    # Enumerated the calendar type of the mapi recurrence. Enum, available values: Default, CalGregorian, CalGregorianUs, CalJapan, CalTaiwan, CalKorea, CalHijri, CalThai, CalHebrew, CalGregorianMeFrench, CalGregorianArabic, CalGregorianXLitEnglish, CalGregorianXLitFrench, CalLunarJapanese, CalChineseLunar, CalSaka, CalLunarEtoChn, CalLunarEtoKor, CalLunarRokuyou, CalLunarKorean, CalUmAlQura
    # @return [String]
    attr_accessor :calendar_type
    # An array of dates, each of which is the original instance date of either a deleted instance or a modified instance for this recurrence.             
    # @return [Array<DateTime>]
    attr_accessor :deleted_instance_dates
    # End date of an item recurrence pattern.             
    # @return [DateTime]
    attr_accessor :end_date
    # Enumerates the ending type for the recurrence. Enum, available values: None, EndAfterDate, EndAfterNOccurrences, NeverEnd
    # @return [String]
    attr_accessor :end_type
    # An exception specifies changes to an instance of a recurring series.             
    # @return [Array<MapiCalendarExceptionInfoDto>]
    attr_accessor :exceptions
    # Enumerates mapi calendar recurrence frequency. Enum, available values: None, Daily, Weekly, Monthly, Yearly
    # @return [String]
    attr_accessor :frequency
    # An array of dates, each of which is the date of a modified instance.             
    # @return [Array<DateTime>]
    attr_accessor :modified_instance_dates
    # Number of occurrences in a recurrence.             
    # @return [Integer]
    attr_accessor :occurrence_count
    # Enumerates the mapi calendar recurrence pattern types. Enum, available values: Day, Week, Month, MonthEnd, MonthNth, HjMonth, HjMonthNth, HjMonthEnd
    # @return [String]
    attr_accessor :pattern_type
    # Interval at which the meeting pattern repeats.             
    # @return [Integer]
    attr_accessor :period
    # Defines whether pattern is sliding or not.             
    # @return [BOOLEAN]
    attr_accessor :sliding_flag
    # Start date of an item recurrence pattern.             
    # @return [DateTime]
    attr_accessor :start_date
    # Day of week. Enum, available values: Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
    # @return [String]
    attr_accessor :week_start_day
    def discriminator #getter method
      self.class.name.split('::').last
    end

    def discriminator=(discriminator) #setter method, parameter ignored
      @discriminator = self.class.name.split('::').last
    end
    # Day of the month on which the recurrence falls.             
    # @return [Integer]
    attr_accessor :day
    # Days of week at which the event occurs.              Items: Enumerates the days of week of the mapi calendar recurrence pattern. Enum, available values: Saturday, Friday, Thursday, Wednesday, Tuesday, Monday, Sunday
    # @return [Array<String>]
    attr_accessor :day_of_week
    # Day positions, typically found in a month. Enum, available values: None, First, Second, Third, Fourth, Last
    # @return [String]
    attr_accessor :position
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'calendar_type' => :'calendarType',
        :'deleted_instance_dates' => :'deletedInstanceDates',
        :'end_date' => :'endDate',
        :'end_type' => :'endType',
        :'exceptions' => :'exceptions',
        :'frequency' => :'frequency',
        :'modified_instance_dates' => :'modifiedInstanceDates',
        :'occurrence_count' => :'occurrenceCount',
        :'pattern_type' => :'patternType',
        :'period' => :'period',
        :'sliding_flag' => :'slidingFlag',
        :'start_date' => :'startDate',
        :'week_start_day' => :'weekStartDay',
        :'discriminator' => :'discriminator',
        :'day' => :'day',
        :'day_of_week' => :'dayOfWeek',
        :'position' => :'position'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'calendar_type' => :'String',
        :'deleted_instance_dates' => :'Array<DateTime>',
        :'end_date' => :'DateTime',
        :'end_type' => :'String',
        :'exceptions' => :'Array<MapiCalendarExceptionInfoDto>',
        :'frequency' => :'String',
        :'modified_instance_dates' => :'Array<DateTime>',
        :'occurrence_count' => :'Integer',
        :'pattern_type' => :'String',
        :'period' => :'Integer',
        :'sliding_flag' => :'BOOLEAN',
        :'start_date' => :'DateTime',
        :'week_start_day' => :'String',
        :'discriminator' => :'String',
        :'day' => :'Integer',
        :'day_of_week' => :'Array<String>',
        :'position' => :'String'
      }
    end

    # Initializes the object
    # @param [String] calendar_type Enumerated the calendar type of the mapi recurrence. Enum, available values: Default, CalGregorian, CalGregorianUs, CalJapan, CalTaiwan, CalKorea, CalHijri, CalThai, CalHebrew, CalGregorianMeFrench, CalGregorianArabic, CalGregorianXLitEnglish, CalGregorianXLitFrench, CalLunarJapanese, CalChineseLunar, CalSaka, CalLunarEtoChn, CalLunarEtoKor, CalLunarRokuyou, CalLunarKorean, CalUmAlQura
    # @param [Array<DateTime>] deleted_instance_dates An array of dates, each of which is the original instance date of either a deleted instance or a modified instance for this recurrence.             
    # @param [DateTime] end_date End date of an item recurrence pattern.             
    # @param [String] end_type Enumerates the ending type for the recurrence. Enum, available values: None, EndAfterDate, EndAfterNOccurrences, NeverEnd
    # @param [Array<MapiCalendarExceptionInfoDto>] exceptions An exception specifies changes to an instance of a recurring series.             
    # @param [String] frequency Enumerates mapi calendar recurrence frequency. Enum, available values: None, Daily, Weekly, Monthly, Yearly
    # @param [Array<DateTime>] modified_instance_dates An array of dates, each of which is the date of a modified instance.             
    # @param [Integer] occurrence_count Number of occurrences in a recurrence.             
    # @param [String] pattern_type Enumerates the mapi calendar recurrence pattern types. Enum, available values: Day, Week, Month, MonthEnd, MonthNth, HjMonth, HjMonthNth, HjMonthEnd
    # @param [Integer] period Interval at which the meeting pattern repeats.             
    # @param [BOOLEAN] sliding_flag Defines whether pattern is sliding or not.             
    # @param [DateTime] start_date Start date of an item recurrence pattern.             
    # @param [String] week_start_day Day of week. Enum, available values: Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
    # @param [Integer] day Day of the month on which the recurrence falls.             
    # @param [Array<String>] day_of_week Days of week at which the event occurs.              Items: Enumerates the days of week of the mapi calendar recurrence pattern. Enum, available values: Saturday, Friday, Thursday, Wednesday, Tuesday, Monday, Sunday
    # @param [String] position Day positions, typically found in a month. Enum, available values: None, First, Second, Third, Fourth, Last
    def initialize(
      calendar_type: nil,
      deleted_instance_dates: nil,
      end_date: nil,
      end_type: nil,
      exceptions: nil,
      frequency: nil,
      modified_instance_dates: nil,
      occurrence_count: nil,
      pattern_type: nil,
      period: nil,
      sliding_flag: nil,
      start_date: nil,
      week_start_day: nil,
      day: nil,
      day_of_week: nil,
      position: nil)
      self.calendar_type = calendar_type if calendar_type
      self.deleted_instance_dates = deleted_instance_dates if deleted_instance_dates
      self.end_date = end_date if end_date
      self.end_type = end_type if end_type
      self.exceptions = exceptions if exceptions
      self.frequency = frequency if frequency
      self.modified_instance_dates = modified_instance_dates if modified_instance_dates
      self.occurrence_count = occurrence_count if occurrence_count
      self.pattern_type = pattern_type if pattern_type
      self.period = period if period
      self.sliding_flag = sliding_flag if sliding_flag
      self.start_date = start_date if start_date
      self.week_start_day = week_start_day if week_start_day
      self.day = day if day
      self.day_of_week = day_of_week if day_of_week
      self.position = position if position
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @calendar_type.nil?
        invalid_properties.push('invalid value for "calendar_type", calendar_type cannot be nil.')
      end

      if @end_date.nil?
        invalid_properties.push('invalid value for "end_date", end_date cannot be nil.')
      end

      if @end_type.nil?
        invalid_properties.push('invalid value for "end_type", end_type cannot be nil.')
      end

      if @frequency.nil?
        invalid_properties.push('invalid value for "frequency", frequency cannot be nil.')
      end

      if @occurrence_count.nil?
        invalid_properties.push('invalid value for "occurrence_count", occurrence_count cannot be nil.')
      end

      if @pattern_type.nil?
        invalid_properties.push('invalid value for "pattern_type", pattern_type cannot be nil.')
      end

      if @period.nil?
        invalid_properties.push('invalid value for "period", period cannot be nil.')
      end

      if @sliding_flag.nil?
        invalid_properties.push('invalid value for "sliding_flag", sliding_flag cannot be nil.')
      end

      if @start_date.nil?
        invalid_properties.push('invalid value for "start_date", start_date cannot be nil.')
      end

      if @week_start_day.nil?
        invalid_properties.push('invalid value for "week_start_day", week_start_day cannot be nil.')
      end

      if @discriminator.nil?
        invalid_properties.push('invalid value for "discriminator", discriminator cannot be nil.')
      end

      if @day.nil?
        invalid_properties.push('invalid value for "day", day cannot be nil.')
      end

      if @position.nil?
        invalid_properties.push('invalid value for "position", position cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @calendar_type.nil?
      return false if @end_date.nil?
      return false if @end_type.nil?
      return false if @frequency.nil?
      return false if @occurrence_count.nil?
      return false if @pattern_type.nil?
      return false if @period.nil?
      return false if @sliding_flag.nil?
      return false if @start_date.nil?
      return false if @week_start_day.nil?
      return false if @discriminator.nil?
      return false if @day.nil?
      return false if @position.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          calendar_type == o.calendar_type &&
          deleted_instance_dates == o.deleted_instance_dates &&
          end_date == o.end_date &&
          end_type == o.end_type &&
          exceptions == o.exceptions &&
          frequency == o.frequency &&
          modified_instance_dates == o.modified_instance_dates &&
          occurrence_count == o.occurrence_count &&
          pattern_type == o.pattern_type &&
          period == o.period &&
          sliding_flag == o.sliding_flag &&
          start_date == o.start_date &&
          week_start_day == o.week_start_day &&
          discriminator == o.discriminator &&
          day == o.day &&
          day_of_week == o.day_of_week &&
          position == o.position
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [calendar_type, deleted_instance_dates, end_date, end_type, exceptions, frequency, modified_instance_dates, occurrence_count, pattern_type, period, sliding_flag, start_date, week_start_day, discriminator, day, day_of_week, position].hash
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
