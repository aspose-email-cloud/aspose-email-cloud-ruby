#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="EmailDto.rb">
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
  # Email message representation.             
  class EmailDto
    # Collection of alternate views of message.             
    # @return [Array<AlternateView>]
    attr_accessor :alternate_views

    # Email message attachments.             
    # @return [Array<Attachment>]
    attr_accessor :attachments

    # BCC recipients.             
    # @return [Array<MailAddress>]
    attr_accessor :bcc

    # Email message body as plain text.             
    # @return [String]
    attr_accessor :body

    # Body encoding.             
    # @return [String]
    attr_accessor :body_encoding

    # The content type of message body. Enum, available values: PlainText, Html, Rtf
    # @return [String]
    attr_accessor :body_type

    # CC recipients.             
    # @return [Array<MailAddress>]
    attr_accessor :cc

    # Message date.             
    # @return [DateTime]
    attr_accessor :date

    # Delivery notifications. Items: Email delivery notification options. Enum, available values: Delay, Never, None, OnFailure, OnSuccess
    # @return [Array<String>]
    attr_accessor :delivery_notification_options

    # From address.             
    # @return [MailAddress]
    attr_accessor :from

    # Document headers.             
    # @return [Hash<String, String>]
    attr_accessor :headers

    # HTML body.             
    # @return [String]
    attr_accessor :html_body

    # Html body as plain text. Read only.             
    # @return [String]
    attr_accessor :html_body_text

    # Indicates whether the message body is in Html.             
    # @return [BOOLEAN]
    attr_accessor :is_body_html

    # Indicates whether or not a message has been sent.             
    # @return [BOOLEAN]
    attr_accessor :is_draft

    # Indicates whether the message is encrypted. Read only.             
    # @return [BOOLEAN]
    attr_accessor :is_encrypted

    # Indicates whether the message is signed. Read only.             
    # @return [BOOLEAN]
    attr_accessor :is_signed

    # Linked resources of message.             
    # @return [Array<LinkedResource>]
    attr_accessor :linked_resources

    # Message id.             
    # @return [String]
    attr_accessor :message_id

    # Indicates whether original EML message is in TNEF format. Read only.             
    # @return [BOOLEAN]
    attr_accessor :original_is_tnef

    # Preferred encoding.             
    # @return [String]
    attr_accessor :preferred_text_encoding

    # Email priority status. Enum, available values: High, Low, Normal
    # @return [String]
    attr_accessor :priority

    # Read receipt addresses.             
    # @return [Array<MailAddress>]
    attr_accessor :read_receipt_to

    # The list of addresses to reply to for the mail message.             
    # @return [Array<MailAddress>]
    attr_accessor :reply_to_list

    # ReversePath address.             
    # @return [MailAddress]
    attr_accessor :reverse_path

    # Sender address.             
    # @return [MailAddress]
    attr_accessor :sender

    # Specifies the sensitivity of a MailMessage. Enum, available values: None, Normal, Personal, Private, CompanyConfidential
    # @return [String]
    attr_accessor :sensitivity

    # Message subject.             
    # @return [String]
    attr_accessor :subject

    # Subject encoding.             
    # @return [String]
    attr_accessor :subject_encoding

    # Coordinated Universal Time (UTC) offset for the message dates. This property defines the time zone difference, between the local time and UTC represented as count of ticks (10 000 per millisecond).             
    # @return [Integer]
    attr_accessor :time_zone_offset

    # The address collection that contains the recipients of message.             
    # @return [Array<MailAddress>]
    attr_accessor :to

    # The X-Mailer the software that created the e-mail message.             
    # @return [String]
    attr_accessor :x_mailer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alternate_views' => :'alternateViews',
        :'attachments' => :'attachments',
        :'bcc' => :'bcc',
        :'body' => :'body',
        :'body_encoding' => :'bodyEncoding',
        :'body_type' => :'bodyType',
        :'cc' => :'cc',
        :'date' => :'date',
        :'delivery_notification_options' => :'deliveryNotificationOptions',
        :'from' => :'from',
        :'headers' => :'headers',
        :'html_body' => :'htmlBody',
        :'html_body_text' => :'htmlBodyText',
        :'is_body_html' => :'isBodyHtml',
        :'is_draft' => :'isDraft',
        :'is_encrypted' => :'isEncrypted',
        :'is_signed' => :'isSigned',
        :'linked_resources' => :'linkedResources',
        :'message_id' => :'messageId',
        :'original_is_tnef' => :'originalIsTnef',
        :'preferred_text_encoding' => :'preferredTextEncoding',
        :'priority' => :'priority',
        :'read_receipt_to' => :'readReceiptTo',
        :'reply_to_list' => :'replyToList',
        :'reverse_path' => :'reversePath',
        :'sender' => :'sender',
        :'sensitivity' => :'sensitivity',
        :'subject' => :'subject',
        :'subject_encoding' => :'subjectEncoding',
        :'time_zone_offset' => :'timeZoneOffset',
        :'to' => :'to',
        :'x_mailer' => :'xMailer'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alternate_views' => :'Array<AlternateView>',
        :'attachments' => :'Array<Attachment>',
        :'bcc' => :'Array<MailAddress>',
        :'body' => :'String',
        :'body_encoding' => :'String',
        :'body_type' => :'String',
        :'cc' => :'Array<MailAddress>',
        :'date' => :'DateTime',
        :'delivery_notification_options' => :'Array<String>',
        :'from' => :'MailAddress',
        :'headers' => :'Hash<String, String>',
        :'html_body' => :'String',
        :'html_body_text' => :'String',
        :'is_body_html' => :'BOOLEAN',
        :'is_draft' => :'BOOLEAN',
        :'is_encrypted' => :'BOOLEAN',
        :'is_signed' => :'BOOLEAN',
        :'linked_resources' => :'Array<LinkedResource>',
        :'message_id' => :'String',
        :'original_is_tnef' => :'BOOLEAN',
        :'preferred_text_encoding' => :'String',
        :'priority' => :'String',
        :'read_receipt_to' => :'Array<MailAddress>',
        :'reply_to_list' => :'Array<MailAddress>',
        :'reverse_path' => :'MailAddress',
        :'sender' => :'MailAddress',
        :'sensitivity' => :'String',
        :'subject' => :'String',
        :'subject_encoding' => :'String',
        :'time_zone_offset' => :'Integer',
        :'to' => :'Array<MailAddress>',
        :'x_mailer' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'alternateViews')
        if (value = attributes[:'alternateViews']).is_a?(Array)
          self.alternate_views = value
        end
      end

      if attributes.has_key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.has_key?(:'bcc')
        if (value = attributes[:'bcc']).is_a?(Array)
          self.bcc = value
        end
      end

      if attributes.has_key?(:'body')
        self.body = attributes[:'body']
      end

      if attributes.has_key?(:'bodyEncoding')
        self.body_encoding = attributes[:'bodyEncoding']
      end

      if attributes.has_key?(:'bodyType')
        self.body_type = attributes[:'bodyType']
      end

      if attributes.has_key?(:'cc')
        if (value = attributes[:'cc']).is_a?(Array)
          self.cc = value
        end
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'deliveryNotificationOptions')
        if (value = attributes[:'deliveryNotificationOptions']).is_a?(Array)
          self.delivery_notification_options = value
        end
      end

      if attributes.has_key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.has_key?(:'headers')
        if (value = attributes[:'headers']).is_a?(Hash)
          self.headers = value
        end
      end

      if attributes.has_key?(:'htmlBody')
        self.html_body = attributes[:'htmlBody']
      end

      if attributes.has_key?(:'htmlBodyText')
        self.html_body_text = attributes[:'htmlBodyText']
      end

      if attributes.has_key?(:'isBodyHtml')
        self.is_body_html = attributes[:'isBodyHtml']
      end

      if attributes.has_key?(:'isDraft')
        self.is_draft = attributes[:'isDraft']
      end

      if attributes.has_key?(:'isEncrypted')
        self.is_encrypted = attributes[:'isEncrypted']
      end

      if attributes.has_key?(:'isSigned')
        self.is_signed = attributes[:'isSigned']
      end

      if attributes.has_key?(:'linkedResources')
        if (value = attributes[:'linkedResources']).is_a?(Array)
          self.linked_resources = value
        end
      end

      if attributes.has_key?(:'messageId')
        self.message_id = attributes[:'messageId']
      end

      if attributes.has_key?(:'originalIsTnef')
        self.original_is_tnef = attributes[:'originalIsTnef']
      end

      if attributes.has_key?(:'preferredTextEncoding')
        self.preferred_text_encoding = attributes[:'preferredTextEncoding']
      end

      if attributes.has_key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.has_key?(:'readReceiptTo')
        if (value = attributes[:'readReceiptTo']).is_a?(Array)
          self.read_receipt_to = value
        end
      end

      if attributes.has_key?(:'replyToList')
        if (value = attributes[:'replyToList']).is_a?(Array)
          self.reply_to_list = value
        end
      end

      if attributes.has_key?(:'reversePath')
        self.reverse_path = attributes[:'reversePath']
      end

      if attributes.has_key?(:'sender')
        self.sender = attributes[:'sender']
      end

      if attributes.has_key?(:'sensitivity')
        self.sensitivity = attributes[:'sensitivity']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'subjectEncoding')
        self.subject_encoding = attributes[:'subjectEncoding']
      end

      if attributes.has_key?(:'timeZoneOffset')
        self.time_zone_offset = attributes[:'timeZoneOffset']
      end

      if attributes.has_key?(:'to')
        if (value = attributes[:'to']).is_a?(Array)
          self.to = value
        end
      end

      if attributes.has_key?(:'xMailer')
        self.x_mailer = attributes[:'xMailer']
      end
    end

    # Initializes the object
    # @param [Array<AlternateView>] alternate_views Collection of alternate views of message.             
    # @param [Array<Attachment>] attachments Email message attachments.             
    # @param [Array<MailAddress>] bcc BCC recipients.             
    # @param [String] body Email message body as plain text.             
    # @param [String] body_encoding Body encoding.             
    # @param [String] body_type The content type of message body. Enum, available values: PlainText, Html, Rtf
    # @param [Array<MailAddress>] cc CC recipients.             
    # @param [DateTime] date Message date.             
    # @param [Array<String>] delivery_notification_options Delivery notifications. Items: Email delivery notification options. Enum, available values: Delay, Never, None, OnFailure, OnSuccess
    # @param [MailAddress] from From address.             
    # @param [Hash<String, String>] headers Document headers.             
    # @param [String] html_body HTML body.             
    # @param [String] html_body_text Html body as plain text. Read only.             
    # @param [BOOLEAN] is_body_html Indicates whether the message body is in Html.             
    # @param [BOOLEAN] is_draft Indicates whether or not a message has been sent.             
    # @param [BOOLEAN] is_encrypted Indicates whether the message is encrypted. Read only.             
    # @param [BOOLEAN] is_signed Indicates whether the message is signed. Read only.             
    # @param [Array<LinkedResource>] linked_resources Linked resources of message.             
    # @param [String] message_id Message id.             
    # @param [BOOLEAN] original_is_tnef Indicates whether original EML message is in TNEF format. Read only.             
    # @param [String] preferred_text_encoding Preferred encoding.             
    # @param [String] priority Email priority status. Enum, available values: High, Low, Normal
    # @param [Array<MailAddress>] read_receipt_to Read receipt addresses.             
    # @param [Array<MailAddress>] reply_to_list The list of addresses to reply to for the mail message.             
    # @param [MailAddress] reverse_path ReversePath address.             
    # @param [MailAddress] sender Sender address.             
    # @param [String] sensitivity Specifies the sensitivity of a MailMessage. Enum, available values: None, Normal, Personal, Private, CompanyConfidential
    # @param [String] subject Message subject.             
    # @param [String] subject_encoding Subject encoding.             
    # @param [Integer] time_zone_offset Coordinated Universal Time (UTC) offset for the message dates. This property defines the time zone difference, between the local time and UTC represented as count of ticks (10 000 per millisecond).             
    # @param [Array<MailAddress>] to The address collection that contains the recipients of message.             
    # @param [String] x_mailer The X-Mailer the software that created the e-mail message.             
    def initialize(alternate_views=nil, attachments=nil, bcc=nil, body=nil, body_encoding=nil, body_type=nil, cc=nil, date=nil, delivery_notification_options=nil, from=nil, headers=nil, html_body=nil, html_body_text=nil, is_body_html=nil, is_draft=nil, is_encrypted=nil, is_signed=nil, linked_resources=nil, message_id=nil, original_is_tnef=nil, preferred_text_encoding=nil, priority=nil, read_receipt_to=nil, reply_to_list=nil, reverse_path=nil, sender=nil, sensitivity=nil, subject=nil, subject_encoding=nil, time_zone_offset=nil, to=nil, x_mailer=nil)
      self.alternate_views = alternate_views if alternate_views
      self.attachments = attachments if attachments
      self.bcc = bcc if bcc
      self.body = body if body
      self.body_encoding = body_encoding if body_encoding
      self.body_type = body_type if body_type
      self.cc = cc if cc
      self.date = date if date
      self.delivery_notification_options = delivery_notification_options if delivery_notification_options
      self.from = from if from
      self.headers = headers if headers
      self.html_body = html_body if html_body
      self.html_body_text = html_body_text if html_body_text
      self.is_body_html = is_body_html if is_body_html
      self.is_draft = is_draft if is_draft
      self.is_encrypted = is_encrypted if is_encrypted
      self.is_signed = is_signed if is_signed
      self.linked_resources = linked_resources if linked_resources
      self.message_id = message_id if message_id
      self.original_is_tnef = original_is_tnef if original_is_tnef
      self.preferred_text_encoding = preferred_text_encoding if preferred_text_encoding
      self.priority = priority if priority
      self.read_receipt_to = read_receipt_to if read_receipt_to
      self.reply_to_list = reply_to_list if reply_to_list
      self.reverse_path = reverse_path if reverse_path
      self.sender = sender if sender
      self.sensitivity = sensitivity if sensitivity
      self.subject = subject if subject
      self.subject_encoding = subject_encoding if subject_encoding
      self.time_zone_offset = time_zone_offset if time_zone_offset
      self.to = to if to
      self.x_mailer = x_mailer if x_mailer
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @body_type.nil?
        invalid_properties.push('invalid value for "body_type", body_type cannot be nil.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @is_body_html.nil?
        invalid_properties.push('invalid value for "is_body_html", is_body_html cannot be nil.')
      end

      if @is_draft.nil?
        invalid_properties.push('invalid value for "is_draft", is_draft cannot be nil.')
      end

      if @is_encrypted.nil?
        invalid_properties.push('invalid value for "is_encrypted", is_encrypted cannot be nil.')
      end

      if @is_signed.nil?
        invalid_properties.push('invalid value for "is_signed", is_signed cannot be nil.')
      end

      if @original_is_tnef.nil?
        invalid_properties.push('invalid value for "original_is_tnef", original_is_tnef cannot be nil.')
      end

      if @priority.nil?
        invalid_properties.push('invalid value for "priority", priority cannot be nil.')
      end

      if @sensitivity.nil?
        invalid_properties.push('invalid value for "sensitivity", sensitivity cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @body_type.nil?
      return false if @date.nil?
      return false if @is_body_html.nil?
      return false if @is_draft.nil?
      return false if @is_encrypted.nil?
      return false if @is_signed.nil?
      return false if @original_is_tnef.nil?
      return false if @priority.nil?
      return false if @sensitivity.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alternate_views == o.alternate_views &&
          attachments == o.attachments &&
          bcc == o.bcc &&
          body == o.body &&
          body_encoding == o.body_encoding &&
          body_type == o.body_type &&
          cc == o.cc &&
          date == o.date &&
          delivery_notification_options == o.delivery_notification_options &&
          from == o.from &&
          headers == o.headers &&
          html_body == o.html_body &&
          html_body_text == o.html_body_text &&
          is_body_html == o.is_body_html &&
          is_draft == o.is_draft &&
          is_encrypted == o.is_encrypted &&
          is_signed == o.is_signed &&
          linked_resources == o.linked_resources &&
          message_id == o.message_id &&
          original_is_tnef == o.original_is_tnef &&
          preferred_text_encoding == o.preferred_text_encoding &&
          priority == o.priority &&
          read_receipt_to == o.read_receipt_to &&
          reply_to_list == o.reply_to_list &&
          reverse_path == o.reverse_path &&
          sender == o.sender &&
          sensitivity == o.sensitivity &&
          subject == o.subject &&
          subject_encoding == o.subject_encoding &&
          time_zone_offset == o.time_zone_offset &&
          to == o.to &&
          x_mailer == o.x_mailer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alternate_views, attachments, bcc, body, body_encoding, body_type, cc, date, delivery_notification_options, from, headers, html_body, html_body_text, is_body_html, is_draft, is_encrypted, is_signed, linked_resources, message_id, original_is_tnef, preferred_text_encoding, priority, read_receipt_to, reply_to_list, reverse_path, sender, sensitivity, subject, subject_encoding, time_zone_offset, to, x_mailer].hash
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
