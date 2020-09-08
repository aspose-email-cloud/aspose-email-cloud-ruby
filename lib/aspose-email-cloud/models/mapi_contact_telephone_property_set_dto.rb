#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiContactTelephonePropertySetDto.rb">
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
  # Specify optional telephone numbers for the contact.             
  class MapiContactTelephonePropertySetDto
    # Shows if MapiContactTelephonePropertySet is empty             
    # @return [BOOLEAN]
    attr_accessor :is_empty
    # Default value of electronic address Uses when user does not set any electronic address if UseAutocomplete property is set 'true'             
    # @return [String]
    attr_accessor :default_telephone_number
    # Indicates that one electronic address is completed automatically in case if user does not set any electronic address             
    # @return [BOOLEAN]
    attr_accessor :use_autocomplete
    # Gets or sets the callback telephone number             
    # @return [String]
    attr_accessor :callback_telephone_number
    # Gets or sets the business telephone number             
    # @return [String]
    attr_accessor :business_telephone_number
    # Gets or sets the home telephone number             
    # @return [String]
    attr_accessor :home_telephone_number
    # Gets or sets the primary telephone number             
    # @return [String]
    attr_accessor :primary_telephone_number
    # Gets or sets the second business telephone number             
    # @return [String]
    attr_accessor :business2_telephone_number
    # Gets or sets the mobile telephone number             
    # @return [String]
    attr_accessor :mobile_telephone_number
    # Gets or sets the radio telephone number             
    # @return [String]
    attr_accessor :radio_telephone_number
    # Gets or sets the car telephone number             
    # @return [String]
    attr_accessor :car_telephone_number
    # Gets or sets an alternate telephone number             
    # @return [String]
    attr_accessor :other_telephone_number
    # Gets or sets the telephone number of the contact's assistant             
    # @return [String]
    attr_accessor :assistant_telephone_number
    # Gets or sets a second home telephone number             
    # @return [String]
    attr_accessor :home2_telephone_number
    # Gets or sets the telephone number for the contact's text telephone (TTY) or telecommunication device for the deaf (TDD)             
    # @return [String]
    attr_accessor :tty_tdd_phone_number
    # Gets or sets the company phone number             
    # @return [String]
    attr_accessor :company_main_telephone_number
    # Gets or sets the telex number             
    # @return [String]
    attr_accessor :telex_number
    # Gets or sets the integrated services digital network (ISDN) number             
    # @return [String]
    attr_accessor :isdn_number
    # Gets or sets a pager telephone number             
    # @return [String]
    attr_accessor :pager_telephone_number
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_empty' => :'isEmpty',
        :'default_telephone_number' => :'defaultTelephoneNumber',
        :'use_autocomplete' => :'useAutocomplete',
        :'callback_telephone_number' => :'callbackTelephoneNumber',
        :'business_telephone_number' => :'businessTelephoneNumber',
        :'home_telephone_number' => :'homeTelephoneNumber',
        :'primary_telephone_number' => :'primaryTelephoneNumber',
        :'business2_telephone_number' => :'business2TelephoneNumber',
        :'mobile_telephone_number' => :'mobileTelephoneNumber',
        :'radio_telephone_number' => :'radioTelephoneNumber',
        :'car_telephone_number' => :'carTelephoneNumber',
        :'other_telephone_number' => :'otherTelephoneNumber',
        :'assistant_telephone_number' => :'assistantTelephoneNumber',
        :'home2_telephone_number' => :'home2TelephoneNumber',
        :'tty_tdd_phone_number' => :'ttyTddPhoneNumber',
        :'company_main_telephone_number' => :'companyMainTelephoneNumber',
        :'telex_number' => :'telexNumber',
        :'isdn_number' => :'isdnNumber',
        :'pager_telephone_number' => :'pagerTelephoneNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_empty' => :'BOOLEAN',
        :'default_telephone_number' => :'String',
        :'use_autocomplete' => :'BOOLEAN',
        :'callback_telephone_number' => :'String',
        :'business_telephone_number' => :'String',
        :'home_telephone_number' => :'String',
        :'primary_telephone_number' => :'String',
        :'business2_telephone_number' => :'String',
        :'mobile_telephone_number' => :'String',
        :'radio_telephone_number' => :'String',
        :'car_telephone_number' => :'String',
        :'other_telephone_number' => :'String',
        :'assistant_telephone_number' => :'String',
        :'home2_telephone_number' => :'String',
        :'tty_tdd_phone_number' => :'String',
        :'company_main_telephone_number' => :'String',
        :'telex_number' => :'String',
        :'isdn_number' => :'String',
        :'pager_telephone_number' => :'String'
      }
    end

    # Initializes the object
    # @param [BOOLEAN] is_empty Shows if MapiContactTelephonePropertySet is empty             
    # @param [String] default_telephone_number Default value of electronic address Uses when user does not set any electronic address if UseAutocomplete property is set 'true'             
    # @param [BOOLEAN] use_autocomplete Indicates that one electronic address is completed automatically in case if user does not set any electronic address             
    # @param [String] callback_telephone_number Gets or sets the callback telephone number             
    # @param [String] business_telephone_number Gets or sets the business telephone number             
    # @param [String] home_telephone_number Gets or sets the home telephone number             
    # @param [String] primary_telephone_number Gets or sets the primary telephone number             
    # @param [String] business2_telephone_number Gets or sets the second business telephone number             
    # @param [String] mobile_telephone_number Gets or sets the mobile telephone number             
    # @param [String] radio_telephone_number Gets or sets the radio telephone number             
    # @param [String] car_telephone_number Gets or sets the car telephone number             
    # @param [String] other_telephone_number Gets or sets an alternate telephone number             
    # @param [String] assistant_telephone_number Gets or sets the telephone number of the contact's assistant             
    # @param [String] home2_telephone_number Gets or sets a second home telephone number             
    # @param [String] tty_tdd_phone_number Gets or sets the telephone number for the contact's text telephone (TTY) or telecommunication device for the deaf (TDD)             
    # @param [String] company_main_telephone_number Gets or sets the company phone number             
    # @param [String] telex_number Gets or sets the telex number             
    # @param [String] isdn_number Gets or sets the integrated services digital network (ISDN) number             
    # @param [String] pager_telephone_number Gets or sets a pager telephone number             
    def initialize(
      is_empty: nil,
      default_telephone_number: nil,
      use_autocomplete: nil,
      callback_telephone_number: nil,
      business_telephone_number: nil,
      home_telephone_number: nil,
      primary_telephone_number: nil,
      business2_telephone_number: nil,
      mobile_telephone_number: nil,
      radio_telephone_number: nil,
      car_telephone_number: nil,
      other_telephone_number: nil,
      assistant_telephone_number: nil,
      home2_telephone_number: nil,
      tty_tdd_phone_number: nil,
      company_main_telephone_number: nil,
      telex_number: nil,
      isdn_number: nil,
      pager_telephone_number: nil)
      self.is_empty = is_empty if is_empty
      self.default_telephone_number = default_telephone_number if default_telephone_number
      self.use_autocomplete = use_autocomplete if use_autocomplete
      self.callback_telephone_number = callback_telephone_number if callback_telephone_number
      self.business_telephone_number = business_telephone_number if business_telephone_number
      self.home_telephone_number = home_telephone_number if home_telephone_number
      self.primary_telephone_number = primary_telephone_number if primary_telephone_number
      self.business2_telephone_number = business2_telephone_number if business2_telephone_number
      self.mobile_telephone_number = mobile_telephone_number if mobile_telephone_number
      self.radio_telephone_number = radio_telephone_number if radio_telephone_number
      self.car_telephone_number = car_telephone_number if car_telephone_number
      self.other_telephone_number = other_telephone_number if other_telephone_number
      self.assistant_telephone_number = assistant_telephone_number if assistant_telephone_number
      self.home2_telephone_number = home2_telephone_number if home2_telephone_number
      self.tty_tdd_phone_number = tty_tdd_phone_number if tty_tdd_phone_number
      self.company_main_telephone_number = company_main_telephone_number if company_main_telephone_number
      self.telex_number = telex_number if telex_number
      self.isdn_number = isdn_number if isdn_number
      self.pager_telephone_number = pager_telephone_number if pager_telephone_number
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_empty.nil?
        invalid_properties.push('invalid value for "is_empty", is_empty cannot be nil.')
      end

      if @use_autocomplete.nil?
        invalid_properties.push('invalid value for "use_autocomplete", use_autocomplete cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_empty.nil?
      return false if @use_autocomplete.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_empty == o.is_empty &&
          default_telephone_number == o.default_telephone_number &&
          use_autocomplete == o.use_autocomplete &&
          callback_telephone_number == o.callback_telephone_number &&
          business_telephone_number == o.business_telephone_number &&
          home_telephone_number == o.home_telephone_number &&
          primary_telephone_number == o.primary_telephone_number &&
          business2_telephone_number == o.business2_telephone_number &&
          mobile_telephone_number == o.mobile_telephone_number &&
          radio_telephone_number == o.radio_telephone_number &&
          car_telephone_number == o.car_telephone_number &&
          other_telephone_number == o.other_telephone_number &&
          assistant_telephone_number == o.assistant_telephone_number &&
          home2_telephone_number == o.home2_telephone_number &&
          tty_tdd_phone_number == o.tty_tdd_phone_number &&
          company_main_telephone_number == o.company_main_telephone_number &&
          telex_number == o.telex_number &&
          isdn_number == o.isdn_number &&
          pager_telephone_number == o.pager_telephone_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_empty, default_telephone_number, use_autocomplete, callback_telephone_number, business_telephone_number, home_telephone_number, primary_telephone_number, business2_telephone_number, mobile_telephone_number, radio_telephone_number, car_telephone_number, other_telephone_number, assistant_telephone_number, home2_telephone_number, tty_tdd_phone_number, company_main_telephone_number, telex_number, isdn_number, pager_telephone_number].hash
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
