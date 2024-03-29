#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiCalendarTimeZoneInfoDto.rb">
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
  # Represents the mapi calendar time zone rule.             
  class MapiCalendarTimeZoneInfoDto
    # Time zone's offset in minutes from UTC.             
    # @return [Integer]
    attr_accessor :bias
    # Offset in minutes from lBias during daylight saving time.             
    # @return [Integer]
    attr_accessor :daylight_bias
    # Date and local time that indicate when to begin using the DaylightBias.             
    # @return [MapiCalendarTimeZoneRuleDto]
    attr_accessor :daylight_date
    # Offset in minutes from lBias during standard time.             
    # @return [Integer]
    attr_accessor :standard_bias
    # Date and local time that indicate when to begin using the StandardBias.             
    # @return [MapiCalendarTimeZoneRuleDto]
    attr_accessor :standard_date
    # Individual bit flags that specify information about this TimeZoneRule.              Items: Enumerates the individual bit flags that specify information about TimeZoneRule. Enum, available values: TzRuleFlagRecurCurrentTzReg, TzRuleFlagEffectiveTzReg
    # @return [Array<String>]
    attr_accessor :time_zone_flags
    # Year in which this rule is scheduled to take effect.             
    # @return [Integer]
    attr_accessor :year
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'bias' => :'bias',
        :'daylight_bias' => :'daylightBias',
        :'daylight_date' => :'daylightDate',
        :'standard_bias' => :'standardBias',
        :'standard_date' => :'standardDate',
        :'time_zone_flags' => :'timeZoneFlags',
        :'year' => :'year'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'bias' => :'Integer',
        :'daylight_bias' => :'Integer',
        :'daylight_date' => :'MapiCalendarTimeZoneRuleDto',
        :'standard_bias' => :'Integer',
        :'standard_date' => :'MapiCalendarTimeZoneRuleDto',
        :'time_zone_flags' => :'Array<String>',
        :'year' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Integer] bias Time zone's offset in minutes from UTC.             
    # @param [Integer] daylight_bias Offset in minutes from lBias during daylight saving time.             
    # @param [MapiCalendarTimeZoneRuleDto] daylight_date Date and local time that indicate when to begin using the DaylightBias.             
    # @param [Integer] standard_bias Offset in minutes from lBias during standard time.             
    # @param [MapiCalendarTimeZoneRuleDto] standard_date Date and local time that indicate when to begin using the StandardBias.             
    # @param [Array<String>] time_zone_flags Individual bit flags that specify information about this TimeZoneRule.              Items: Enumerates the individual bit flags that specify information about TimeZoneRule. Enum, available values: TzRuleFlagRecurCurrentTzReg, TzRuleFlagEffectiveTzReg
    # @param [Integer] year Year in which this rule is scheduled to take effect.             
    def initialize(
      bias: nil,
      daylight_bias: nil,
      daylight_date: nil,
      standard_bias: nil,
      standard_date: nil,
      time_zone_flags: nil,
      year: nil)
      self.bias = bias if bias
      self.daylight_bias = daylight_bias if daylight_bias
      self.daylight_date = daylight_date if daylight_date
      self.standard_bias = standard_bias if standard_bias
      self.standard_date = standard_date if standard_date
      self.time_zone_flags = time_zone_flags if time_zone_flags
      self.year = year if year
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @bias.nil?
        invalid_properties.push('invalid value for "bias", bias cannot be nil.')
      end

      if @daylight_bias.nil?
        invalid_properties.push('invalid value for "daylight_bias", daylight_bias cannot be nil.')
      end

      if @standard_bias.nil?
        invalid_properties.push('invalid value for "standard_bias", standard_bias cannot be nil.')
      end

      if @year.nil?
        invalid_properties.push('invalid value for "year", year cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @bias.nil?
      return false if @daylight_bias.nil?
      return false if @standard_bias.nil?
      return false if @year.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          bias == o.bias &&
          daylight_bias == o.daylight_bias &&
          daylight_date == o.daylight_date &&
          standard_bias == o.standard_bias &&
          standard_date == o.standard_date &&
          time_zone_flags == o.time_zone_flags &&
          year == o.year
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [bias, daylight_bias, daylight_date, standard_bias, standard_date, time_zone_flags, year].hash
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
