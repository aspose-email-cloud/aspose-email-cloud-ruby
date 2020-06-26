#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiContactNamePropertySetDto.rb">
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
  # The properties are used to specify the name of the person represented by the contact             
  class MapiContactNamePropertySetDto
    # Full name of the contact             
    # @return [String]
    attr_accessor :display_name

    # Title of the contact             
    # @return [String]
    attr_accessor :display_name_prefix

    # Name under which to file this contact when displaying a list of contacts             
    # @return [String]
    attr_accessor :file_under

    # Value specifying how to generate and recompute the property when other properties are changed             
    # @return [Integer]
    attr_accessor :file_under_id

    # Generation suffix of the contact             
    # @return [String]
    attr_accessor :generation

    # Given name (first name) of the contact             
    # @return [String]
    attr_accessor :given_name

    # Initials of the contact             
    # @return [String]
    attr_accessor :initials

    # Middle name of the contact             
    # @return [String]
    attr_accessor :middle_name

    # Nickname of the contact             
    # @return [String]
    attr_accessor :nickname

    # Surname (family name) of the contact             
    # @return [String]
    attr_accessor :surname

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'display_name' => :'displayName',
        :'display_name_prefix' => :'displayNamePrefix',
        :'file_under' => :'fileUnder',
        :'file_under_id' => :'fileUnderId',
        :'generation' => :'generation',
        :'given_name' => :'givenName',
        :'initials' => :'initials',
        :'middle_name' => :'middleName',
        :'nickname' => :'nickname',
        :'surname' => :'surname'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'display_name' => :'String',
        :'display_name_prefix' => :'String',
        :'file_under' => :'String',
        :'file_under_id' => :'Integer',
        :'generation' => :'String',
        :'given_name' => :'String',
        :'initials' => :'String',
        :'middle_name' => :'String',
        :'nickname' => :'String',
        :'surname' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'displayName')
        self.display_name = attributes[:'displayName']
      end

      if attributes.has_key?(:'displayNamePrefix')
        self.display_name_prefix = attributes[:'displayNamePrefix']
      end

      if attributes.has_key?(:'fileUnder')
        self.file_under = attributes[:'fileUnder']
      end

      if attributes.has_key?(:'fileUnderId')
        self.file_under_id = attributes[:'fileUnderId']
      end

      if attributes.has_key?(:'generation')
        self.generation = attributes[:'generation']
      end

      if attributes.has_key?(:'givenName')
        self.given_name = attributes[:'givenName']
      end

      if attributes.has_key?(:'initials')
        self.initials = attributes[:'initials']
      end

      if attributes.has_key?(:'middleName')
        self.middle_name = attributes[:'middleName']
      end

      if attributes.has_key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.has_key?(:'surname')
        self.surname = attributes[:'surname']
      end
    end

    # Initializes the object
    # @param [String] display_name Full name of the contact             
    # @param [String] display_name_prefix Title of the contact             
    # @param [String] file_under Name under which to file this contact when displaying a list of contacts             
    # @param [Integer] file_under_id Value specifying how to generate and recompute the property when other properties are changed             
    # @param [String] generation Generation suffix of the contact             
    # @param [String] given_name Given name (first name) of the contact             
    # @param [String] initials Initials of the contact             
    # @param [String] middle_name Middle name of the contact             
    # @param [String] nickname Nickname of the contact             
    # @param [String] surname Surname (family name) of the contact             
    def initialize(display_name=nil, display_name_prefix=nil, file_under=nil, file_under_id=nil, generation=nil, given_name=nil, initials=nil, middle_name=nil, nickname=nil, surname=nil)
      self.display_name = display_name if display_name
      self.display_name_prefix = display_name_prefix if display_name_prefix
      self.file_under = file_under if file_under
      self.file_under_id = file_under_id if file_under_id
      self.generation = generation if generation
      self.given_name = given_name if given_name
      self.initials = initials if initials
      self.middle_name = middle_name if middle_name
      self.nickname = nickname if nickname
      self.surname = surname if surname
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @file_under_id.nil?
        invalid_properties.push('invalid value for "file_under_id", file_under_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @file_under_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          display_name == o.display_name &&
          display_name_prefix == o.display_name_prefix &&
          file_under == o.file_under &&
          file_under_id == o.file_under_id &&
          generation == o.generation &&
          given_name == o.given_name &&
          initials == o.initials &&
          middle_name == o.middle_name &&
          nickname == o.nickname &&
          surname == o.surname
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [display_name, display_name_prefix, file_under, file_under_id, generation, given_name, initials, middle_name, nickname, surname].hash
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
