#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiContactPersonalInfoPropertySetDto.rb">
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
  # Specify other additional contact information.             
  class MapiContactPersonalInfoPropertySetDto
    # Specifies the name of the contact's spouse/partner             
    # @return [String]
    attr_accessor :spouse_name
    # Specifies the contact's personal web page URL             
    # @return [String]
    attr_accessor :personal_home_page
    # Specifies the language that the contact uses             
    # @return [String]
    attr_accessor :language
    # Specifies the additional notes             
    # @return [String]
    attr_accessor :notes
    # Specifies the hobbies of the contact             
    # @return [String]
    attr_accessor :hobbies
    # Specifies the location of the contact             
    # @return [String]
    attr_accessor :location
    # Specifies the contact's instant messaging address             
    # @return [String]
    attr_accessor :instant_messaging_address
    # Specifies an organizational ID number for the contact             
    # @return [String]
    attr_accessor :organizational_id_number
    # Specifies the contact's customer ID number             
    # @return [String]
    attr_accessor :customer_id
    # Specifies the contact's government ID number             
    # @return [String]
    attr_accessor :government_id_number
    # Specifies a URL path from which a client can retrieve free/busy information for the contact as an iCal file             
    # @return [String]
    attr_accessor :free_busy_location
    # Specifies the account name of the contact             
    # @return [String]
    attr_accessor :account
    # Specifies the contact's business web page URL             
    # @return [String]
    attr_accessor :html
    # Specifies the contact's business web page URL             
    # @return [String]
    attr_accessor :business_home_page
    # Specifies the contact's File Transfer Protocol (FTP) URL             
    # @return [String]
    attr_accessor :ftp_site
    # Specifies the name of the network to which the contact's computer is connected             
    # @return [String]
    attr_accessor :computer_network_name
    # Gender of the contact Enum, available values: Unspecified, Female, Male
    # @return [String]
    attr_accessor :gender
    # Specifies the name of the person who referred this contact to the user             
    # @return [String]
    attr_accessor :referred_by_name
    # Contains a list of names of children.             
    # @return [Array<String>]
    attr_accessor :children
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'spouse_name' => :'spouseName',
        :'personal_home_page' => :'personalHomePage',
        :'language' => :'language',
        :'notes' => :'notes',
        :'hobbies' => :'hobbies',
        :'location' => :'location',
        :'instant_messaging_address' => :'instantMessagingAddress',
        :'organizational_id_number' => :'organizationalIdNumber',
        :'customer_id' => :'customerId',
        :'government_id_number' => :'governmentIdNumber',
        :'free_busy_location' => :'freeBusyLocation',
        :'account' => :'account',
        :'html' => :'html',
        :'business_home_page' => :'businessHomePage',
        :'ftp_site' => :'ftpSite',
        :'computer_network_name' => :'computerNetworkName',
        :'gender' => :'gender',
        :'referred_by_name' => :'referredByName',
        :'children' => :'children'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'spouse_name' => :'String',
        :'personal_home_page' => :'String',
        :'language' => :'String',
        :'notes' => :'String',
        :'hobbies' => :'String',
        :'location' => :'String',
        :'instant_messaging_address' => :'String',
        :'organizational_id_number' => :'String',
        :'customer_id' => :'String',
        :'government_id_number' => :'String',
        :'free_busy_location' => :'String',
        :'account' => :'String',
        :'html' => :'String',
        :'business_home_page' => :'String',
        :'ftp_site' => :'String',
        :'computer_network_name' => :'String',
        :'gender' => :'String',
        :'referred_by_name' => :'String',
        :'children' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [String] spouse_name Specifies the name of the contact's spouse/partner             
    # @param [String] personal_home_page Specifies the contact's personal web page URL             
    # @param [String] language Specifies the language that the contact uses             
    # @param [String] notes Specifies the additional notes             
    # @param [String] hobbies Specifies the hobbies of the contact             
    # @param [String] location Specifies the location of the contact             
    # @param [String] instant_messaging_address Specifies the contact's instant messaging address             
    # @param [String] organizational_id_number Specifies an organizational ID number for the contact             
    # @param [String] customer_id Specifies the contact's customer ID number             
    # @param [String] government_id_number Specifies the contact's government ID number             
    # @param [String] free_busy_location Specifies a URL path from which a client can retrieve free/busy information for the contact as an iCal file             
    # @param [String] account Specifies the account name of the contact             
    # @param [String] html Specifies the contact's business web page URL             
    # @param [String] business_home_page Specifies the contact's business web page URL             
    # @param [String] ftp_site Specifies the contact's File Transfer Protocol (FTP) URL             
    # @param [String] computer_network_name Specifies the name of the network to which the contact's computer is connected             
    # @param [String] gender Gender of the contact Enum, available values: Unspecified, Female, Male
    # @param [String] referred_by_name Specifies the name of the person who referred this contact to the user             
    # @param [Array<String>] children Contains a list of names of children.             
    def initialize(
      spouse_name: nil,
      personal_home_page: nil,
      language: nil,
      notes: nil,
      hobbies: nil,
      location: nil,
      instant_messaging_address: nil,
      organizational_id_number: nil,
      customer_id: nil,
      government_id_number: nil,
      free_busy_location: nil,
      account: nil,
      html: nil,
      business_home_page: nil,
      ftp_site: nil,
      computer_network_name: nil,
      gender: nil,
      referred_by_name: nil,
      children: nil)
      self.spouse_name = spouse_name if spouse_name
      self.personal_home_page = personal_home_page if personal_home_page
      self.language = language if language
      self.notes = notes if notes
      self.hobbies = hobbies if hobbies
      self.location = location if location
      self.instant_messaging_address = instant_messaging_address if instant_messaging_address
      self.organizational_id_number = organizational_id_number if organizational_id_number
      self.customer_id = customer_id if customer_id
      self.government_id_number = government_id_number if government_id_number
      self.free_busy_location = free_busy_location if free_busy_location
      self.account = account if account
      self.html = html if html
      self.business_home_page = business_home_page if business_home_page
      self.ftp_site = ftp_site if ftp_site
      self.computer_network_name = computer_network_name if computer_network_name
      self.gender = gender if gender
      self.referred_by_name = referred_by_name if referred_by_name
      self.children = children if children
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @gender.nil?
        invalid_properties.push('invalid value for "gender", gender cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @gender.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          spouse_name == o.spouse_name &&
          personal_home_page == o.personal_home_page &&
          language == o.language &&
          notes == o.notes &&
          hobbies == o.hobbies &&
          location == o.location &&
          instant_messaging_address == o.instant_messaging_address &&
          organizational_id_number == o.organizational_id_number &&
          customer_id == o.customer_id &&
          government_id_number == o.government_id_number &&
          free_busy_location == o.free_busy_location &&
          account == o.account &&
          html == o.html &&
          business_home_page == o.business_home_page &&
          ftp_site == o.ftp_site &&
          computer_network_name == o.computer_network_name &&
          gender == o.gender &&
          referred_by_name == o.referred_by_name &&
          children == o.children
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [spouse_name, personal_home_page, language, notes, hobbies, location, instant_messaging_address, organizational_id_number, customer_id, government_id_number, free_busy_location, account, html, business_home_page, ftp_site, computer_network_name, gender, referred_by_name, children].hash
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
