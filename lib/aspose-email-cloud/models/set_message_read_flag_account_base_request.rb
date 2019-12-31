#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="SetMessageReadFlagAccountBaseRequest.rb">
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
  # Set message is read request             
  class SetMessageReadFlagAccountBaseRequest
    # First account storage file name for receiving emails (or universal one)             
    # @return [String]
    attr_accessor :first_account

    # Second account storage file name for sending emails (ignored if first is universal)             
    # @return [String]
    attr_accessor :second_account

    # Storage folder location of account files             
    # @return [StorageFolderLocation]
    attr_accessor :storage_folder

    # Message identifier             
    # @return [String]
    attr_accessor :message_id

    # Specifies that message should be marked read or unread             
    # @return [BOOLEAN]
    attr_accessor :is_read

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_account' => :'firstAccount',
        :'second_account' => :'secondAccount',
        :'storage_folder' => :'storageFolder',
        :'message_id' => :'messageId',
        :'is_read' => :'isRead'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'first_account' => :'String',
        :'second_account' => :'String',
        :'storage_folder' => :'StorageFolderLocation',
        :'message_id' => :'String',
        :'is_read' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'firstAccount')
        self.first_account = attributes[:'firstAccount']
      end

      if attributes.has_key?(:'secondAccount')
        self.second_account = attributes[:'secondAccount']
      end

      if attributes.has_key?(:'storageFolder')
        self.storage_folder = attributes[:'storageFolder']
      end

      if attributes.has_key?(:'messageId')
        self.message_id = attributes[:'messageId']
      end

      if attributes.has_key?(:'isRead')
        self.is_read = attributes[:'isRead']
      end
    end

    # Initializes the object
    # @param [String] first_account First account storage file name for receiving emails (or universal one)             
    # @param [String] second_account Second account storage file name for sending emails (ignored if first is universal)             
    # @param [StorageFolderLocation] storage_folder Storage folder location of account files             
    # @param [String] message_id Message identifier             
    # @param [BOOLEAN] is_read Specifies that message should be marked read or unread             
    def initialize(first_account=nil, second_account=nil, storage_folder=nil, message_id=nil, is_read=nil)
      self.first_account = first_account if first_account
      self.second_account = second_account if second_account
      self.storage_folder = storage_folder if storage_folder
      self.message_id = message_id if message_id
      self.is_read = is_read if is_read
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_account.nil?
        invalid_properties.push('invalid value for "first_account", first_account cannot be nil.')
      end

      if @first_account.to_s.length < 1
        invalid_properties.push('invalid value for "first_account", the character length must be great than or equal to 1.')
      end

      if @message_id.nil?
        invalid_properties.push('invalid value for "message_id", message_id cannot be nil.')
      end

      if @message_id.to_s.length < 1
        invalid_properties.push('invalid value for "message_id", the character length must be great than or equal to 1.')
      end

      if @is_read.nil?
        invalid_properties.push('invalid value for "is_read", is_read cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_account.nil?
      return false if @first_account.to_s.length < 1
      return false if @message_id.nil?
      return false if @message_id.to_s.length < 1
      return false if @is_read.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] first_account Value to be assigned
    def first_account=(first_account)
      if first_account.nil?
        fail ArgumentError, 'first_account cannot be nil'
      end

      if first_account.to_s.length < 1
        fail ArgumentError, 'invalid value for "first_account", the character length must be great than or equal to 1.'
      end

      @first_account = first_account
    end

    # Custom attribute writer method with validation
    # @param [Object] message_id Value to be assigned
    def message_id=(message_id)
      if message_id.nil?
        fail ArgumentError, 'message_id cannot be nil'
      end

      if message_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "message_id", the character length must be great than or equal to 1.'
      end

      @message_id = message_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_account == o.first_account &&
          second_account == o.second_account &&
          storage_folder == o.storage_folder &&
          message_id == o.message_id &&
          is_read == o.is_read
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [first_account, second_account, storage_folder, message_id, is_read].hash
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
