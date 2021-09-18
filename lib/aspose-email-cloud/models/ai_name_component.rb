#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="AiNameComponent.rb">
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
  # Parsed name component             
  class AiNameComponent
    # Component value             
    # @return [String]
    attr_accessor :value
    # Name component category. Enum, available values: Unknown, Mononym, Score, Format, FirstInitial, FirstName, MiddleInitial, MiddleName, MiddleNickname, MiddleSobriquet, MiddleMaidenName, MiddlePatronym, MiddleMatronym, LastInitial, LastName, LastNobiliaryParticle, LastNominalConjunction, LastPaternalSurname, LastMaternalSurname, PrefixTitle, PostfixGenerationalTitle, PostfixPostnominalLetters, ArabicIsm, ArabicKunya, ArabicNasab, ArabicSlaqab, ArabicNisbah
    # @return [String]
    attr_accessor :category
    # Score from 0.0 to 1.0             
    # @return [Float]
    attr_accessor :score
    # Component position from 0             
    # @return [Integer]
    attr_accessor :position
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'value' => :'value',
        :'category' => :'category',
        :'score' => :'score',
        :'position' => :'position'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'value' => :'String',
        :'category' => :'String',
        :'score' => :'Float',
        :'position' => :'Integer'
      }
    end

    # Initializes the object
    # @param [String] value Component value             
    # @param [String] category Name component category. Enum, available values: Unknown, Mononym, Score, Format, FirstInitial, FirstName, MiddleInitial, MiddleName, MiddleNickname, MiddleSobriquet, MiddleMaidenName, MiddlePatronym, MiddleMatronym, LastInitial, LastName, LastNobiliaryParticle, LastNominalConjunction, LastPaternalSurname, LastMaternalSurname, PrefixTitle, PostfixGenerationalTitle, PostfixPostnominalLetters, ArabicIsm, ArabicKunya, ArabicNasab, ArabicSlaqab, ArabicNisbah
    # @param [Float] score Score from 0.0 to 1.0             
    # @param [Integer] position Component position from 0             
    def initialize(
      value: nil,
      category: nil,
      score: nil,
      position: nil)
      self.value = value if value
      self.category = category if category
      self.score = score if score
      self.position = position if position
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @category.nil?
        invalid_properties.push('invalid value for "category", category cannot be nil.')
      end

      if @score.nil?
        invalid_properties.push('invalid value for "score", score cannot be nil.')
      end

      if @score > 1.0
        invalid_properties.push('invalid value for "score", must be smaller than or equal to 1.0.')
      end

      if @score < 0.0
        invalid_properties.push('invalid value for "score", must be greater than or equal to 0.0.')
      end

      if @position.nil?
        invalid_properties.push('invalid value for "position", position cannot be nil.')
      end

      if @position > 2147483647
        invalid_properties.push('invalid value for "position", must be smaller than or equal to 2147483647.')
      end

      if @position < 0
        invalid_properties.push('invalid value for "position", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @category.nil?
      return false if @score.nil?
      return false if @score > 1.0
      return false if @score < 0.0
      return false if @position.nil?
      return false if @position > 2147483647
      return false if @position < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] score Value to be assigned
    def score=(score)
      if score.nil?
        fail ArgumentError, 'score cannot be nil'
      end

      if score > 1.0
        fail ArgumentError, 'invalid value for "score", must be smaller than or equal to 1.0.'
      end

      if score < 0.0
        fail ArgumentError, 'invalid value for "score", must be greater than or equal to 0.0.'
      end

      @score = score
    end

    # Custom attribute writer method with validation
    # @param [Object] position Value to be assigned
    def position=(position)
      if position.nil?
        fail ArgumentError, 'position cannot be nil'
      end

      if position > 2147483647
        fail ArgumentError, 'invalid value for "position", must be smaller than or equal to 2147483647.'
      end

      if position < 0
        fail ArgumentError, 'invalid value for "position", must be greater than or equal to 0.'
      end

      @position = position
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          value == o.value &&
          category == o.category &&
          score == o.score &&
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
      [value, category, score, position].hash
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
