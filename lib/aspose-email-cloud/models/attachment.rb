#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="Attachment.rb">
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
  # Document attachment.             
  class Attachment
    # Attachment file content as Base64 string.             
    # @return [String]
    attr_accessor :base64_data

    # Attachment content id             
    # @return [String]
    attr_accessor :content_id

    # Content type             
    # @return [ContentType]
    attr_accessor :content_type

    # Attachment headers.             
    # @return [Hash<String, String>]
    attr_accessor :headers

    # Content-Disposition header. Read only.             
    # @return [String]
    attr_accessor :content_disposition

    # Determines if attachment is an embedded message. Read only.             
    # @return [BOOLEAN]
    attr_accessor :is_embedded_message

    # Attachment name.             
    # @return [String]
    attr_accessor :name

    # Encoding of attachment name.             
    # @return [String]
    attr_accessor :name_encoding

    # Preferred text encoding.             
    # @return [String]
    attr_accessor :preferred_text_encoding

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'base64_data' => :'base64Data',
        :'content_id' => :'contentId',
        :'content_type' => :'contentType',
        :'headers' => :'headers',
        :'content_disposition' => :'contentDisposition',
        :'is_embedded_message' => :'isEmbeddedMessage',
        :'name' => :'name',
        :'name_encoding' => :'nameEncoding',
        :'preferred_text_encoding' => :'preferredTextEncoding'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'base64_data' => :'String',
        :'content_id' => :'String',
        :'content_type' => :'ContentType',
        :'headers' => :'Hash<String, String>',
        :'content_disposition' => :'String',
        :'is_embedded_message' => :'BOOLEAN',
        :'name' => :'String',
        :'name_encoding' => :'String',
        :'preferred_text_encoding' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'base64Data')
        self.base64_data = attributes[:'base64Data']
      end

      if attributes.has_key?(:'contentId')
        self.content_id = attributes[:'contentId']
      end

      if attributes.has_key?(:'contentType')
        self.content_type = attributes[:'contentType']
      end

      if attributes.has_key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Hash)
          self.headers = value
        end
      end

      if attributes.has_key?(:'contentDisposition')
        self.content_disposition = attributes[:'contentDisposition']
      end

      if attributes.has_key?(:'isEmbeddedMessage')
        self.is_embedded_message = attributes[:'isEmbeddedMessage']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'nameEncoding')
        self.name_encoding = attributes[:'nameEncoding']
      end

      if attributes.has_key?(:'preferredTextEncoding')
        self.preferred_text_encoding = attributes[:'preferredTextEncoding']
      end
    end

    # Initializes the object
    # @param [String] base64_data Attachment file content as Base64 string.             
    # @param [String] content_id Attachment content id             
    # @param [ContentType] content_type Content type             
    # @param [Hash<String, String>] headers Attachment headers.             
    # @param [String] content_disposition Content-Disposition header. Read only.             
    # @param [BOOLEAN] is_embedded_message Determines if attachment is an embedded message. Read only.             
    # @param [String] name Attachment name.             
    # @param [String] name_encoding Encoding of attachment name.             
    # @param [String] preferred_text_encoding Preferred text encoding.             
    def initialize(base64_data=nil, content_id=nil, content_type=nil, headers=nil, content_disposition=nil, is_embedded_message=nil, name=nil, name_encoding=nil, preferred_text_encoding=nil)
      self.base64_data = base64_data if base64_data
      self.content_id = content_id if content_id
      self.content_type = content_type if content_type
      self.headers = headers if headers
      self.content_disposition = content_disposition if content_disposition
      self.is_embedded_message = is_embedded_message if is_embedded_message
      self.name = name if name
      self.name_encoding = name_encoding if name_encoding
      self.preferred_text_encoding = preferred_text_encoding if preferred_text_encoding
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_embedded_message.nil?
        invalid_properties.push('invalid value for "is_embedded_message", is_embedded_message cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_embedded_message.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          base64_data == o.base64_data &&
          content_id == o.content_id &&
          content_type == o.content_type &&
          headers == o.headers &&
          content_disposition == o.content_disposition &&
          is_embedded_message == o.is_embedded_message &&
          name == o.name &&
          name_encoding == o.name_encoding &&
          preferred_text_encoding == o.preferred_text_encoding
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [base64_data, content_id, content_type, headers, content_disposition, is_embedded_message, name, name_encoding, preferred_text_encoding].hash
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
