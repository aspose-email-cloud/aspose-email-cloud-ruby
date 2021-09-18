#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiPidLidPropertyDescriptor.rb">
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
  # Property identified by an unsigned 32-bit quantity along with a property set             
  class MapiPidLidPropertyDescriptor < MapiPidPropertyDescriptor
    def discriminator #getter method
      self.class.name.split('::').last
    end

    def discriminator=(discriminator) #setter method, parameter ignored
      @discriminator = self.class.name.split('::').last
    end
    # The name used to refer to the property in the documentation. The prefix of the canonical name identifies the basic characteristics of a property to the implementer. The canonical naming structure uses three categories that are denoted by the following prefixes to the canonical property name: * PidLid prefix: Properties identified by an unsigned 32-bit quantity along with a property set. * PidName prefix: Properties identified by a string name along with a property set. * PidTag prefix: Properties identified by an unsigned 16-bit quantity.             
    # @return [String]
    attr_accessor :canonical_name
    # [MS-OXCDATA]: Data Structures./nEnum, available values: Unspecified, Null, Integer16, Integer32, Floating32, Floating64, Currency, FloatingTime, ErrorCode, Boolean, Integer64, String, String8, Time, Guid, ServerId, Restriction, RuleAction, Binary, MultipleInteger16, MultipleInteger32, MultipleFloating32, MultipleFloating64, MultipleCurrency, MultipleFloatingTime, MultipleBoolean, MultipleInteger64, MultipleString, MultipleString8, MultipleTime, MultipleGuid, MultipleBinary, Object
    # @return [String]
    attr_accessor :data_type
    # Indicates if data type contains of multiple values             
    # @return [BOOLEAN]
    attr_accessor :multiple_values_data_type
    # A string that identifies the property             
    # @return [String]
    attr_accessor :name
    # An unsigned 32-bit quantity that, along with the property set, identifies a named property.             
    # @return [Integer]
    attr_accessor :long_id
    # A GUID that identifies a group of properties with a similar purpose.             
    # @return [String]
    attr_accessor :property_set
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'discriminator' => :'discriminator',
        :'canonical_name' => :'canonicalName',
        :'data_type' => :'dataType',
        :'multiple_values_data_type' => :'multipleValuesDataType',
        :'name' => :'name',
        :'long_id' => :'longId',
        :'property_set' => :'propertySet'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'discriminator' => :'String',
        :'canonical_name' => :'String',
        :'data_type' => :'String',
        :'multiple_values_data_type' => :'BOOLEAN',
        :'name' => :'String',
        :'long_id' => :'Integer',
        :'property_set' => :'String'
      }
    end

    # Initializes the object
    # @param [String] canonical_name The name used to refer to the property in the documentation. The prefix of the canonical name identifies the basic characteristics of a property to the implementer. The canonical naming structure uses three categories that are denoted by the following prefixes to the canonical property name: * PidLid prefix: Properties identified by an unsigned 32-bit quantity along with a property set. * PidName prefix: Properties identified by a string name along with a property set. * PidTag prefix: Properties identified by an unsigned 16-bit quantity.             
    # @param [String] data_type [MS-OXCDATA]: Data Structures./nEnum, available values: Unspecified, Null, Integer16, Integer32, Floating32, Floating64, Currency, FloatingTime, ErrorCode, Boolean, Integer64, String, String8, Time, Guid, ServerId, Restriction, RuleAction, Binary, MultipleInteger16, MultipleInteger32, MultipleFloating32, MultipleFloating64, MultipleCurrency, MultipleFloatingTime, MultipleBoolean, MultipleInteger64, MultipleString, MultipleString8, MultipleTime, MultipleGuid, MultipleBinary, Object
    # @param [BOOLEAN] multiple_values_data_type Indicates if data type contains of multiple values             
    # @param [String] name A string that identifies the property             
    # @param [Integer] long_id An unsigned 32-bit quantity that, along with the property set, identifies a named property.             
    # @param [String] property_set A GUID that identifies a group of properties with a similar purpose.             
    def initialize(#,
      canonical_name: nil,
      data_type: nil,
      multiple_values_data_type: nil,
      name: nil,
      long_id: nil,
      property_set: nil)
      self.canonical_name = canonical_name if canonical_name
      self.data_type = data_type if data_type
      self.multiple_values_data_type = multiple_values_data_type if multiple_values_data_type
      self.name = name if name
      self.long_id = long_id if long_id
      self.property_set = property_set if property_set
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @discriminator.nil?
        invalid_properties.push('invalid value for "discriminator", discriminator cannot be nil.')
      end

      if @data_type.nil?
        invalid_properties.push('invalid value for "data_type", data_type cannot be nil.')
      end

      if @multiple_values_data_type.nil?
        invalid_properties.push('invalid value for "multiple_values_data_type", multiple_values_data_type cannot be nil.')
      end

      if @long_id.nil?
        invalid_properties.push('invalid value for "long_id", long_id cannot be nil.')
      end

      if @property_set.nil?
        invalid_properties.push('invalid value for "property_set", property_set cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @discriminator.nil?
      return false if @data_type.nil?
      return false if @multiple_values_data_type.nil?
      return false if @long_id.nil?
      return false if @property_set.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          discriminator == o.discriminator &&
          canonical_name == o.canonical_name &&
          data_type == o.data_type &&
          multiple_values_data_type == o.multiple_values_data_type &&
          name == o.name &&
          long_id == o.long_id &&
          property_set == o.property_set
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [discriminator, canonical_name, data_type, multiple_values_data_type, name, long_id, property_set].hash
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
