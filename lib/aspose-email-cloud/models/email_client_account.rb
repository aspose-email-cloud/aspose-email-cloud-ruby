#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="EmailClientAccount.rb">
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
  # A universal email client account             
  class EmailClientAccount
    # Mail server host name or IP address             
    # @return [String]
    attr_accessor :host
    # Mail server port             
    # @return [Integer]
    attr_accessor :port
    # Email account security mode. Enum, available values: None, SSLExplicit, SSLImplicit, SSLAuto, Auto
    # @return [String]
    attr_accessor :security_options
    # Type of connection protocol. Enum, available values: IMAP, POP3, SMTP, EWS, WebDav
    # @return [String]
    attr_accessor :protocol_type
    # Email client account credentials             
    # @return [EmailClientAccountCredentials]
    attr_accessor :credentials
    # File with messages cache. Used to provide extra functions, which are not supported by account             
    # @return [StorageFileLocation]
    attr_accessor :cache_file
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'host' => :'host',
        :'port' => :'port',
        :'security_options' => :'securityOptions',
        :'protocol_type' => :'protocolType',
        :'credentials' => :'credentials',
        :'cache_file' => :'cacheFile'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'host' => :'String',
        :'port' => :'Integer',
        :'security_options' => :'String',
        :'protocol_type' => :'String',
        :'credentials' => :'EmailClientAccountCredentials',
        :'cache_file' => :'StorageFileLocation'
      }
    end

    # Initializes the object
    # @param [String] host Mail server host name or IP address             
    # @param [Integer] port Mail server port             
    # @param [String] security_options Email account security mode. Enum, available values: None, SSLExplicit, SSLImplicit, SSLAuto, Auto
    # @param [String] protocol_type Type of connection protocol. Enum, available values: IMAP, POP3, SMTP, EWS, WebDav
    # @param [EmailClientAccountCredentials] credentials Email client account credentials             
    # @param [StorageFileLocation] cache_file File with messages cache. Used to provide extra functions, which are not supported by account             
    def initialize(
      host: nil,
      port: nil,
      security_options: nil,
      protocol_type: nil,
      credentials: nil,
      cache_file: nil)
      self.host = host if host
      self.port = port if port
      self.security_options = security_options if security_options
      self.protocol_type = protocol_type if protocol_type
      self.credentials = credentials if credentials
      self.cache_file = cache_file if cache_file
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

      if @port > 2147483647
        invalid_properties.push('invalid value for "port", must be smaller than or equal to 2147483647.')
      end

      if @port < 1
        invalid_properties.push('invalid value for "port", must be greater than or equal to 1.')
      end

      if @security_options.nil?
        invalid_properties.push('invalid value for "security_options", security_options cannot be nil.')
      end

      if @protocol_type.nil?
        invalid_properties.push('invalid value for "protocol_type", protocol_type cannot be nil.')
      end

      if @credentials.nil?
        invalid_properties.push('invalid value for "credentials", credentials cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @host.nil?
      return false if @host.to_s.length < 1
      return false if @port.nil?
      return false if @port > 2147483647
      return false if @port < 1
      return false if @security_options.nil?
      return false if @protocol_type.nil?
      return false if @credentials.nil?
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
    # @param [Object] port Value to be assigned
    def port=(port)
      if port.nil?
        fail ArgumentError, 'port cannot be nil'
      end

      if port > 2147483647
        fail ArgumentError, 'invalid value for "port", must be smaller than or equal to 2147483647.'
      end

      if port < 1
        fail ArgumentError, 'invalid value for "port", must be greater than or equal to 1.'
      end

      @port = port
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          host == o.host &&
          port == o.port &&
          security_options == o.security_options &&
          protocol_type == o.protocol_type &&
          credentials == o.credentials &&
          cache_file == o.cache_file
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [host, port, security_options, protocol_type, credentials, cache_file].hash
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
