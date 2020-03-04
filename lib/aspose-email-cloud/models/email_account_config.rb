#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="EmailAccountConfig.rb">
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
  # Email account configuration.             
  class EmailAccountConfig
    # Email account display name             
    # @return [String]
    attr_accessor :display_name

    # Type of connection protocol. Enum, available values: IMAP, POP3, SMTP, EWS, WebDav
    # @return [String]
    attr_accessor :protocol_type

    # Email account host.             
    # @return [String]
    attr_accessor :host

    # Port.             
    # @return [Integer]
    attr_accessor :port

    # Email account security mode Enum, available values: None, SSLExplicit, SSLImplicit, SSLAuto, Auto
    # @return [String]
    attr_accessor :socket_type

    # Supported authentication types.              Items: Email account authentication types. Enum, available values: NoAuth, OAuth2, PasswordCleartext, PasswordEncrypted, SmtpAfterPop, ClientIpAddress
    # @return [Array<String>]
    attr_accessor :authentication_types

    # Extra account information.             
    # @return [Array<NameValuePair>]
    attr_accessor :extra_info

    # Determines that configuration validated. Set to false if validation skipped.             
    # @return [BOOLEAN]
    attr_accessor :is_validated

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'display_name' => :'displayName',
        :'protocol_type' => :'protocolType',
        :'host' => :'host',
        :'port' => :'port',
        :'socket_type' => :'socketType',
        :'authentication_types' => :'authenticationTypes',
        :'extra_info' => :'extraInfo',
        :'is_validated' => :'isValidated'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'display_name' => :'String',
        :'protocol_type' => :'String',
        :'host' => :'String',
        :'port' => :'Integer',
        :'socket_type' => :'String',
        :'authentication_types' => :'Array<String>',
        :'extra_info' => :'Array<NameValuePair>',
        :'is_validated' => :'BOOLEAN'
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

      if attributes.has_key?(:'protocolType')
        self.protocol_type = attributes[:'protocolType']
      end

      if attributes.has_key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'socketType')
        self.socket_type = attributes[:'socketType']
      end

      if attributes.has_key?(:'authenticationTypes')
        if (value = attributes[:'authenticationTypes']).is_a?(Array)
          self.authentication_types = value
        end
      end

      if attributes.has_key?(:'extraInfo')
        if (value = attributes[:'extraInfo']).is_a?(Array)
          self.extra_info = value
        end
      end

      if attributes.has_key?(:'isValidated')
        self.is_validated = attributes[:'isValidated']
      end
    end

    # Initializes the object
    # @param [String] display_name Email account display name             
    # @param [String] protocol_type Type of connection protocol. Enum, available values: IMAP, POP3, SMTP, EWS, WebDav
    # @param [String] host Email account host.             
    # @param [Integer] port Port.             
    # @param [String] socket_type Email account security mode Enum, available values: None, SSLExplicit, SSLImplicit, SSLAuto, Auto
    # @param [Array<String>] authentication_types Supported authentication types.              Items: Email account authentication types. Enum, available values: NoAuth, OAuth2, PasswordCleartext, PasswordEncrypted, SmtpAfterPop, ClientIpAddress
    # @param [Array<NameValuePair>] extra_info Extra account information.             
    # @param [BOOLEAN] is_validated Determines that configuration validated. Set to false if validation skipped.             
    def initialize(display_name=nil, protocol_type=nil, host=nil, port=nil, socket_type=nil, authentication_types=nil, extra_info=nil, is_validated=nil)
      self.display_name = display_name if display_name
      self.protocol_type = protocol_type if protocol_type
      self.host = host if host
      self.port = port if port
      self.socket_type = socket_type if socket_type
      self.authentication_types = authentication_types if authentication_types
      self.extra_info = extra_info if extra_info
      self.is_validated = is_validated if is_validated
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @protocol_type.nil?
        invalid_properties.push('invalid value for "protocol_type", protocol_type cannot be nil.')
      end

      if @socket_type.nil?
        invalid_properties.push('invalid value for "socket_type", socket_type cannot be nil.')
      end

      if @is_validated.nil?
        invalid_properties.push('invalid value for "is_validated", is_validated cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @protocol_type.nil?
      return false if @socket_type.nil?
      return false if @is_validated.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          display_name == o.display_name &&
          protocol_type == o.protocol_type &&
          host == o.host &&
          port == o.port &&
          socket_type == o.socket_type &&
          authentication_types == o.authentication_types &&
          extra_info == o.extra_info &&
          is_validated == o.is_validated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [display_name, protocol_type, host, port, socket_type, authentication_types, extra_info, is_validated].hash
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
