#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="SaveEmailAccountRequest.rb">
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
  # Save email account settings with login/password authentication request             
  class SaveEmailAccountRequest
    # Email account host             
    attr_accessor :host

    # Email account port             
    attr_accessor :port

    # Email account login             
    attr_accessor :login

    # Enum, available values: None, SSLExplicit, SSLImplicit, SSLAuto, Auto
    attr_accessor :security_options

    # Type of connection protocol. Enum, available values: IMAP, POP3, SMTP, EWS, WebDav
    attr_accessor :protocol_type

    # Email account description             
    attr_accessor :description

    # A storage file location info to store email account             
    attr_accessor :storage_file

    # Email account password             
    attr_accessor :password

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'host' => :'host',
        :'port' => :'port',
        :'login' => :'login',
        :'security_options' => :'securityOptions',
        :'protocol_type' => :'protocolType',
        :'description' => :'description',
        :'storage_file' => :'storageFile',
        :'password' => :'password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'host' => :'String',
        :'port' => :'Integer',
        :'login' => :'String',
        :'security_options' => :'String',
        :'protocol_type' => :'String',
        :'description' => :'String',
        :'storage_file' => :'StorageFileLocation',
        :'password' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'login')
        self.login = attributes[:'login']
      end

      if attributes.has_key?(:'securityOptions')
        self.security_options = attributes[:'securityOptions']
      end

      if attributes.has_key?(:'protocolType')
        self.protocol_type = attributes[:'protocolType']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'storageFile')
        self.storage_file = attributes[:'storageFile']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end
    end

    # Initializes the object
    def initialize(host=nil, port=nil, login=nil, security_options=nil, protocol_type=nil, description=nil, storage_file=nil, password=nil)
      self.host = host
      self.port = port
      self.login = login
      self.security_options = security_options
      self.protocol_type = protocol_type
      self.description = description
      self.storage_file = storage_file
      self.password = password
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @host.nil?
        invalid_properties.push('invalid value for "host", host cannot be nil.')
      end

      if @host.to_s.length < 1
        invalid_properties.push('invalid value for "host", the character length must be great than or equal to 1.')
      end

      if @port.nil?
        invalid_properties.push('invalid value for "port", port cannot be nil.')
      end

      if @login.nil?
        invalid_properties.push('invalid value for "login", login cannot be nil.')
      end

      if @login.to_s.length < 1
        invalid_properties.push('invalid value for "login", the character length must be great than or equal to 1.')
      end

      if @security_options.nil?
        invalid_properties.push('invalid value for "security_options", security_options cannot be nil.')
      end

      if @security_options.to_s.length < 1
        invalid_properties.push('invalid value for "security_options", the character length must be great than or equal to 1.')
      end

      if @protocol_type.nil?
        invalid_properties.push('invalid value for "protocol_type", protocol_type cannot be nil.')
      end

      if @protocol_type.to_s.length < 1
        invalid_properties.push('invalid value for "protocol_type", the character length must be great than or equal to 1.')
      end

      if @storage_file.nil?
        invalid_properties.push('invalid value for "storage_file", storage_file cannot be nil.')
      end

      if @password.nil?
        invalid_properties.push('invalid value for "password", password cannot be nil.')
      end

      if @password.to_s.length < 1
        invalid_properties.push('invalid value for "password", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @host.nil?
      return false if @host.to_s.length < 1
      return false if @port.nil?
      return false if @login.nil?
      return false if @login.to_s.length < 1
      return false if @security_options.nil?
      return false if @security_options.to_s.length < 1
      return false if @protocol_type.nil?
      return false if @protocol_type.to_s.length < 1
      return false if @storage_file.nil?
      return false if @password.nil?
      return false if @password.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] host Value to be assigned
    def host=(host)
      if host.nil?
        fail ArgumentError, 'host cannot be nil'
      end

      if host.to_s.length < 1
        fail ArgumentError, 'invalid value for "host", the character length must be great than or equal to 1.'
      end

      @host = host
    end

    # Custom attribute writer method with validation
    # @param [Object] login Value to be assigned
    def login=(login)
      if login.nil?
        fail ArgumentError, 'login cannot be nil'
      end

      if login.to_s.length < 1
        fail ArgumentError, 'invalid value for "login", the character length must be great than or equal to 1.'
      end

      @login = login
    end

    # Custom attribute writer method with validation
    # @param [Object] security_options Value to be assigned
    def security_options=(security_options)
      if security_options.nil?
        fail ArgumentError, 'security_options cannot be nil'
      end

      if security_options.to_s.length < 1
        fail ArgumentError, 'invalid value for "security_options", the character length must be great than or equal to 1.'
      end

      @security_options = security_options
    end

    # Custom attribute writer method with validation
    # @param [Object] protocol_type Value to be assigned
    def protocol_type=(protocol_type)
      if protocol_type.nil?
        fail ArgumentError, 'protocol_type cannot be nil'
      end

      if protocol_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "protocol_type", the character length must be great than or equal to 1.'
      end

      @protocol_type = protocol_type
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)
      if password.nil?
        fail ArgumentError, 'password cannot be nil'
      end

      if password.to_s.length < 1
        fail ArgumentError, 'invalid value for "password", the character length must be great than or equal to 1.'
      end

      @password = password
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          host == o.host &&
          port == o.port &&
          login == o.login &&
          security_options == o.security_options &&
          protocol_type == o.protocol_type &&
          description == o.description &&
          storage_file == o.storage_file &&
          password == o.password
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [host, port, login, security_options, protocol_type, description, storage_file, password].hash
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
