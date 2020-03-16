#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="PostalAddress.rb">
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
  # A postal address             
  class PostalAddress
    # Address.             
    # @return [String]
    attr_accessor :address

    # Address category.             
    # @return [EnumWithCustomOfPostalAddressCategory]
    attr_accessor :category

    # Address's city.             
    # @return [String]
    attr_accessor :city

    # Address's country.             
    # @return [String]
    attr_accessor :country

    # Country code.             
    # @return [String]
    attr_accessor :country_code

    # Defines whether address may be used for mailing.             
    # @return [BOOLEAN]
    attr_accessor :is_mailing_address

    # Postal code.             
    # @return [String]
    attr_accessor :postal_code

    # Post Office box.             
    # @return [String]
    attr_accessor :post_office_box

    # Defines whether postal address is preferred.             
    # @return [BOOLEAN]
    attr_accessor :preferred

    # Address's region.             
    # @return [String]
    attr_accessor :state_or_province

    # Address's street.             
    # @return [String]
    attr_accessor :street

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address' => :'address',
        :'category' => :'category',
        :'city' => :'city',
        :'country' => :'country',
        :'country_code' => :'countryCode',
        :'is_mailing_address' => :'isMailingAddress',
        :'postal_code' => :'postalCode',
        :'post_office_box' => :'postOfficeBox',
        :'preferred' => :'preferred',
        :'state_or_province' => :'stateOrProvince',
        :'street' => :'street'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address' => :'String',
        :'category' => :'EnumWithCustomOfPostalAddressCategory',
        :'city' => :'String',
        :'country' => :'String',
        :'country_code' => :'String',
        :'is_mailing_address' => :'BOOLEAN',
        :'postal_code' => :'String',
        :'post_office_box' => :'String',
        :'preferred' => :'BOOLEAN',
        :'state_or_province' => :'String',
        :'street' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'countryCode')
        self.country_code = attributes[:'countryCode']
      end

      if attributes.has_key?(:'isMailingAddress')
        self.is_mailing_address = attributes[:'isMailingAddress']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'postOfficeBox')
        self.post_office_box = attributes[:'postOfficeBox']
      end

      if attributes.has_key?(:'preferred')
        self.preferred = attributes[:'preferred']
      end

      if attributes.has_key?(:'stateOrProvince')
        self.state_or_province = attributes[:'stateOrProvince']
      end

      if attributes.has_key?(:'street')
        self.street = attributes[:'street']
      end
    end

    # Initializes the object
    # @param [String] address Address.             
    # @param [EnumWithCustomOfPostalAddressCategory] category Address category.             
    # @param [String] city Address's city.             
    # @param [String] country Address's country.             
    # @param [String] country_code Country code.             
    # @param [BOOLEAN] is_mailing_address Defines whether address may be used for mailing.             
    # @param [String] postal_code Postal code.             
    # @param [String] post_office_box Post Office box.             
    # @param [BOOLEAN] preferred Defines whether postal address is preferred.             
    # @param [String] state_or_province Address's region.             
    # @param [String] street Address's street.             
    def initialize(address=nil, category=nil, city=nil, country=nil, country_code=nil, is_mailing_address=nil, postal_code=nil, post_office_box=nil, preferred=nil, state_or_province=nil, street=nil)
      self.address = address if address
      self.category = category if category
      self.city = city if city
      self.country = country if country
      self.country_code = country_code if country_code
      self.is_mailing_address = is_mailing_address if is_mailing_address
      self.postal_code = postal_code if postal_code
      self.post_office_box = post_office_box if post_office_box
      self.preferred = preferred if preferred
      self.state_or_province = state_or_province if state_or_province
      self.street = street if street
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_mailing_address.nil?
        invalid_properties.push('invalid value for "is_mailing_address", is_mailing_address cannot be nil.')
      end

      if @preferred.nil?
        invalid_properties.push('invalid value for "preferred", preferred cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_mailing_address.nil?
      return false if @preferred.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address == o.address &&
          category == o.category &&
          city == o.city &&
          country == o.country &&
          country_code == o.country_code &&
          is_mailing_address == o.is_mailing_address &&
          postal_code == o.postal_code &&
          post_office_box == o.post_office_box &&
          preferred == o.preferred &&
          state_or_province == o.state_or_province &&
          street == o.street
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address, category, city, country, country_code, is_mailing_address, postal_code, post_office_box, preferred, state_or_province, street].hash
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
