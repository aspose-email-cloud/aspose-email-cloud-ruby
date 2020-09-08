#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="MapiMessageDto.rb">
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
  # Represents an Outlook Message format document.             
  class MapiMessageDto < MapiMessageItemBaseDto
    # Message item attachments.             
    # @return [Array<MapiAttachmentDto>]
    attr_accessor :attachments
    # Billing information associated with an item.             
    # @return [String]
    attr_accessor :billing
    # Message text.             
    # @return [String]
    attr_accessor :body
    # Gets the BodyRtf of the message converted to HTML, if present, otherwise an empty string.             
    # @return [String]
    attr_accessor :body_html
    # RTF formatted message text.             
    # @return [String]
    attr_accessor :body_rtf
    # The content type of message body. Enum, available values: PlainText, Html, Rtf
    # @return [String]
    attr_accessor :body_type
    # Contains keywords or categories for the message object.             
    # @return [Array<String>]
    attr_accessor :categories
    # Contains the names of the companies that are associated with an item.             
    # @return [Array<String>]
    attr_accessor :companies
    # The item id, uses with a server.             
    # @return [String]
    attr_accessor :item_id
    # Case-sensitive string that identifies the sender-defined message class, such as IPM.Note. The message class specifies the type, purpose, or content of the message.             
    # @return [String]
    attr_accessor :message_class
    # Contains the mileage information that is associated with an item.             
    # @return [String]
    attr_accessor :mileage
    # Recipients of the message.             
    # @return [Array<MapiRecipientDto>]
    attr_accessor :recipients
    # Contains values that indicate the message sensitivity. Enum, available values: None, Personal, Private, CompanyConfidential
    # @return [String]
    attr_accessor :sensitivity
    # Subject of the message.             
    # @return [String]
    attr_accessor :subject
    # Subject prefix that typically indicates some action on a message, such as \"FW: \" for forwarding.             
    # @return [String]
    attr_accessor :subject_prefix
    # List of MAPI properties             
    # @return [Array<MapiPropertyDto>]
    attr_accessor :properties
    def discriminator #getter method
      self.class.name.split('::').last
    end

    def discriminator=(discriminator) #setter method, parameter ignored
      @discriminator = self.class.name.split('::').last
    end
    # Message text             
    # @return [String]
    attr_accessor :message_body
    # Date and time the message sender submitted a message.             
    # @return [DateTime]
    attr_accessor :client_submit_time
    # Topic of the first message in a conversation thread.             
    # @return [String]
    attr_accessor :conversation_topic
    # Date and time a message was delivered.             
    # @return [DateTime]
    attr_accessor :delivery_time
    # List of the display names of any blind carbon copy (BCC) message recipients, separated by semicolons (;).             
    # @return [String]
    attr_accessor :display_bcc
    # List of the display names of any carbon copy (CC) message recipients, separated by semicolons (;).             
    # @return [String]
    attr_accessor :display_cc
    # Display name for the message.             
    # @return [String]
    attr_accessor :display_name
    # Prefix of the display name.             
    # @return [String]
    attr_accessor :display_name_prefix
    # List of the display names of the primary (To) message recipients, separated by semicolons (;).             
    # @return [String]
    attr_accessor :display_to
    # Message flags.              Items: Mapi message flags. Enum, available values: MsgFlagZero, MsgFlagRead, MsgFlagUnmodified, MsgFlagSubmit, MsgFlagUnsent, MsgFlagHasAttach, MsgFlagFromMe, MsgFlagAssociated, MsgFlagResend, MsgFlagNotifyRead, MsgFlagNotifyUnread, MsgFlagEverRead, MsgFlagOriginX400, MsgFlagOriginInternet, MsgFlagOriginMiscExt
    # @return [Array<String>]
    attr_accessor :flags
    # Transport message headers             
    # @return [Hash<String, String>]
    attr_accessor :headers
    # Internet message id of the message.             
    # @return [String]
    attr_accessor :internet_message_id
    # Represents outlook message format. Enum, available values: Ascii, Unicode
    # @return [String]
    attr_accessor :message_format
    # Normalized subject of the message.             
    # @return [String]
    attr_accessor :normalized_subject
    # Value indicating whether the read receipt is requested.
    # @return [BOOLEAN]
    attr_accessor :read_receipt_requested
    # Reply to names.
    # @return [String]
    attr_accessor :reply_to
    # Message sender's e-mail address type.
    # @return [String]
    attr_accessor :sender_address_type
    # Message sender's e-mail address.
    # @return [String]
    attr_accessor :sender_email_address
    # Message sender's display name.
    # @return [String]
    attr_accessor :sender_name
    # Message sender's e-mail address.
    # @return [String]
    attr_accessor :sender_smtp_address
    # Address type for the messaging user represented by the sender.
    # @return [String]
    attr_accessor :sent_representing_address_type
    # E-mail address for the messaging user represented by the sender.
    # @return [String]
    attr_accessor :sent_representing_email_address
    # Display name for the messaging user represented by the sender.
    # @return [String]
    attr_accessor :sent_representing_name
    # E-mail address for the messaging user represented by the sender.
    # @return [String]
    attr_accessor :sent_representing_smtp_address
    # Transport-specific message envelope information.
    # @return [String]
    attr_accessor :transport_message_headers
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attachments' => :'attachments',
        :'billing' => :'billing',
        :'body' => :'body',
        :'body_html' => :'bodyHtml',
        :'body_rtf' => :'bodyRtf',
        :'body_type' => :'bodyType',
        :'categories' => :'categories',
        :'companies' => :'companies',
        :'item_id' => :'itemId',
        :'message_class' => :'messageClass',
        :'mileage' => :'mileage',
        :'recipients' => :'recipients',
        :'sensitivity' => :'sensitivity',
        :'subject' => :'subject',
        :'subject_prefix' => :'subjectPrefix',
        :'properties' => :'properties',
        :'discriminator' => :'discriminator',
        :'message_body' => :'messageBody',
        :'client_submit_time' => :'clientSubmitTime',
        :'conversation_topic' => :'conversationTopic',
        :'delivery_time' => :'deliveryTime',
        :'display_bcc' => :'displayBcc',
        :'display_cc' => :'displayCc',
        :'display_name' => :'displayName',
        :'display_name_prefix' => :'displayNamePrefix',
        :'display_to' => :'displayTo',
        :'flags' => :'flags',
        :'headers' => :'headers',
        :'internet_message_id' => :'internetMessageId',
        :'message_format' => :'messageFormat',
        :'normalized_subject' => :'normalizedSubject',
        :'read_receipt_requested' => :'readReceiptRequested',
        :'reply_to' => :'replyTo',
        :'sender_address_type' => :'senderAddressType',
        :'sender_email_address' => :'senderEmailAddress',
        :'sender_name' => :'senderName',
        :'sender_smtp_address' => :'senderSmtpAddress',
        :'sent_representing_address_type' => :'sentRepresentingAddressType',
        :'sent_representing_email_address' => :'sentRepresentingEmailAddress',
        :'sent_representing_name' => :'sentRepresentingName',
        :'sent_representing_smtp_address' => :'sentRepresentingSmtpAddress',
        :'transport_message_headers' => :'transportMessageHeaders'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'attachments' => :'Array<MapiAttachmentDto>',
        :'billing' => :'String',
        :'body' => :'String',
        :'body_html' => :'String',
        :'body_rtf' => :'String',
        :'body_type' => :'String',
        :'categories' => :'Array<String>',
        :'companies' => :'Array<String>',
        :'item_id' => :'String',
        :'message_class' => :'String',
        :'mileage' => :'String',
        :'recipients' => :'Array<MapiRecipientDto>',
        :'sensitivity' => :'String',
        :'subject' => :'String',
        :'subject_prefix' => :'String',
        :'properties' => :'Array<MapiPropertyDto>',
        :'discriminator' => :'String',
        :'message_body' => :'String',
        :'client_submit_time' => :'DateTime',
        :'conversation_topic' => :'String',
        :'delivery_time' => :'DateTime',
        :'display_bcc' => :'String',
        :'display_cc' => :'String',
        :'display_name' => :'String',
        :'display_name_prefix' => :'String',
        :'display_to' => :'String',
        :'flags' => :'Array<String>',
        :'headers' => :'Hash<String, String>',
        :'internet_message_id' => :'String',
        :'message_format' => :'String',
        :'normalized_subject' => :'String',
        :'read_receipt_requested' => :'BOOLEAN',
        :'reply_to' => :'String',
        :'sender_address_type' => :'String',
        :'sender_email_address' => :'String',
        :'sender_name' => :'String',
        :'sender_smtp_address' => :'String',
        :'sent_representing_address_type' => :'String',
        :'sent_representing_email_address' => :'String',
        :'sent_representing_name' => :'String',
        :'sent_representing_smtp_address' => :'String',
        :'transport_message_headers' => :'String'
      }
    end

    # Initializes the object
    # @param [Array<MapiAttachmentDto>] attachments Message item attachments.             
    # @param [String] billing Billing information associated with an item.             
    # @param [String] body Message text.             
    # @param [String] body_html Gets the BodyRtf of the message converted to HTML, if present, otherwise an empty string.             
    # @param [String] body_rtf RTF formatted message text.             
    # @param [String] body_type The content type of message body. Enum, available values: PlainText, Html, Rtf
    # @param [Array<String>] categories Contains keywords or categories for the message object.             
    # @param [Array<String>] companies Contains the names of the companies that are associated with an item.             
    # @param [String] item_id The item id, uses with a server.             
    # @param [String] message_class Case-sensitive string that identifies the sender-defined message class, such as IPM.Note. The message class specifies the type, purpose, or content of the message.             
    # @param [String] mileage Contains the mileage information that is associated with an item.             
    # @param [Array<MapiRecipientDto>] recipients Recipients of the message.             
    # @param [String] sensitivity Contains values that indicate the message sensitivity. Enum, available values: None, Personal, Private, CompanyConfidential
    # @param [String] subject Subject of the message.             
    # @param [String] subject_prefix Subject prefix that typically indicates some action on a message, such as \"FW: \" for forwarding.             
    # @param [Array<MapiPropertyDto>] properties List of MAPI properties             
    # @param [String] message_body Message text             
    # @param [DateTime] client_submit_time Date and time the message sender submitted a message.             
    # @param [String] conversation_topic Topic of the first message in a conversation thread.             
    # @param [DateTime] delivery_time Date and time a message was delivered.             
    # @param [String] display_bcc List of the display names of any blind carbon copy (BCC) message recipients, separated by semicolons (;).             
    # @param [String] display_cc List of the display names of any carbon copy (CC) message recipients, separated by semicolons (;).             
    # @param [String] display_name Display name for the message.             
    # @param [String] display_name_prefix Prefix of the display name.             
    # @param [String] display_to List of the display names of the primary (To) message recipients, separated by semicolons (;).             
    # @param [Array<String>] flags Message flags.              Items: Mapi message flags. Enum, available values: MsgFlagZero, MsgFlagRead, MsgFlagUnmodified, MsgFlagSubmit, MsgFlagUnsent, MsgFlagHasAttach, MsgFlagFromMe, MsgFlagAssociated, MsgFlagResend, MsgFlagNotifyRead, MsgFlagNotifyUnread, MsgFlagEverRead, MsgFlagOriginX400, MsgFlagOriginInternet, MsgFlagOriginMiscExt
    # @param [Hash<String, String>] headers Transport message headers             
    # @param [String] internet_message_id Internet message id of the message.             
    # @param [String] message_format Represents outlook message format. Enum, available values: Ascii, Unicode
    # @param [String] normalized_subject Normalized subject of the message.             
    # @param [BOOLEAN] read_receipt_requested Value indicating whether the read receipt is requested.
    # @param [String] reply_to Reply to names.
    # @param [String] sender_address_type Message sender's e-mail address type.
    # @param [String] sender_email_address Message sender's e-mail address.
    # @param [String] sender_name Message sender's display name.
    # @param [String] sender_smtp_address Message sender's e-mail address.
    # @param [String] sent_representing_address_type Address type for the messaging user represented by the sender.
    # @param [String] sent_representing_email_address E-mail address for the messaging user represented by the sender.
    # @param [String] sent_representing_name Display name for the messaging user represented by the sender.
    # @param [String] sent_representing_smtp_address E-mail address for the messaging user represented by the sender.
    # @param [String] transport_message_headers Transport-specific message envelope information.
    def initialize(
      attachments: nil,
      billing: nil,
      body: nil,
      body_html: nil,
      body_rtf: nil,
      body_type: nil,
      categories: nil,
      companies: nil,
      item_id: nil,
      message_class: nil,
      mileage: nil,
      recipients: nil,
      sensitivity: nil,
      subject: nil,
      subject_prefix: nil,
      properties: nil,
      message_body: nil,
      client_submit_time: nil,
      conversation_topic: nil,
      delivery_time: nil,
      display_bcc: nil,
      display_cc: nil,
      display_name: nil,
      display_name_prefix: nil,
      display_to: nil,
      flags: nil,
      headers: nil,
      internet_message_id: nil,
      message_format: nil,
      normalized_subject: nil,
      read_receipt_requested: nil,
      reply_to: nil,
      sender_address_type: nil,
      sender_email_address: nil,
      sender_name: nil,
      sender_smtp_address: nil,
      sent_representing_address_type: nil,
      sent_representing_email_address: nil,
      sent_representing_name: nil,
      sent_representing_smtp_address: nil,
      transport_message_headers: nil)
      self.attachments = attachments if attachments
      self.billing = billing if billing
      self.body = body if body
      self.body_html = body_html if body_html
      self.body_rtf = body_rtf if body_rtf
      self.body_type = body_type if body_type
      self.categories = categories if categories
      self.companies = companies if companies
      self.item_id = item_id if item_id
      self.message_class = message_class if message_class
      self.mileage = mileage if mileage
      self.recipients = recipients if recipients
      self.sensitivity = sensitivity if sensitivity
      self.subject = subject if subject
      self.subject_prefix = subject_prefix if subject_prefix
      self.properties = properties if properties
      self.message_body = message_body if message_body
      self.client_submit_time = client_submit_time if client_submit_time
      self.conversation_topic = conversation_topic if conversation_topic
      self.delivery_time = delivery_time if delivery_time
      self.display_bcc = display_bcc if display_bcc
      self.display_cc = display_cc if display_cc
      self.display_name = display_name if display_name
      self.display_name_prefix = display_name_prefix if display_name_prefix
      self.display_to = display_to if display_to
      self.flags = flags if flags
      self.headers = headers if headers
      self.internet_message_id = internet_message_id if internet_message_id
      self.message_format = message_format if message_format
      self.normalized_subject = normalized_subject if normalized_subject
      self.read_receipt_requested = read_receipt_requested if read_receipt_requested
      self.reply_to = reply_to if reply_to
      self.sender_address_type = sender_address_type if sender_address_type
      self.sender_email_address = sender_email_address if sender_email_address
      self.sender_name = sender_name if sender_name
      self.sender_smtp_address = sender_smtp_address if sender_smtp_address
      self.sent_representing_address_type = sent_representing_address_type if sent_representing_address_type
      self.sent_representing_email_address = sent_representing_email_address if sent_representing_email_address
      self.sent_representing_name = sent_representing_name if sent_representing_name
      self.sent_representing_smtp_address = sent_representing_smtp_address if sent_representing_smtp_address
      self.transport_message_headers = transport_message_headers if transport_message_headers
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @body_type.nil?
        invalid_properties.push('invalid value for "body_type", body_type cannot be nil.')
      end

      if @sensitivity.nil?
        invalid_properties.push('invalid value for "sensitivity", sensitivity cannot be nil.')
      end

      if @discriminator.nil?
        invalid_properties.push('invalid value for "discriminator", discriminator cannot be nil.')
      end

      if @client_submit_time.nil?
        invalid_properties.push('invalid value for "client_submit_time", client_submit_time cannot be nil.')
      end

      if @delivery_time.nil?
        invalid_properties.push('invalid value for "delivery_time", delivery_time cannot be nil.')
      end

      if @message_format.nil?
        invalid_properties.push('invalid value for "message_format", message_format cannot be nil.')
      end

      if @read_receipt_requested.nil?
        invalid_properties.push('invalid value for "read_receipt_requested", read_receipt_requested cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @body_type.nil?
      return false if @sensitivity.nil?
      return false if @discriminator.nil?
      return false if @client_submit_time.nil?
      return false if @delivery_time.nil?
      return false if @message_format.nil?
      return false if @read_receipt_requested.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attachments == o.attachments &&
          billing == o.billing &&
          body == o.body &&
          body_html == o.body_html &&
          body_rtf == o.body_rtf &&
          body_type == o.body_type &&
          categories == o.categories &&
          companies == o.companies &&
          item_id == o.item_id &&
          message_class == o.message_class &&
          mileage == o.mileage &&
          recipients == o.recipients &&
          sensitivity == o.sensitivity &&
          subject == o.subject &&
          subject_prefix == o.subject_prefix &&
          properties == o.properties &&
          discriminator == o.discriminator &&
          message_body == o.message_body &&
          client_submit_time == o.client_submit_time &&
          conversation_topic == o.conversation_topic &&
          delivery_time == o.delivery_time &&
          display_bcc == o.display_bcc &&
          display_cc == o.display_cc &&
          display_name == o.display_name &&
          display_name_prefix == o.display_name_prefix &&
          display_to == o.display_to &&
          flags == o.flags &&
          headers == o.headers &&
          internet_message_id == o.internet_message_id &&
          message_format == o.message_format &&
          normalized_subject == o.normalized_subject &&
          read_receipt_requested == o.read_receipt_requested &&
          reply_to == o.reply_to &&
          sender_address_type == o.sender_address_type &&
          sender_email_address == o.sender_email_address &&
          sender_name == o.sender_name &&
          sender_smtp_address == o.sender_smtp_address &&
          sent_representing_address_type == o.sent_representing_address_type &&
          sent_representing_email_address == o.sent_representing_email_address &&
          sent_representing_name == o.sent_representing_name &&
          sent_representing_smtp_address == o.sent_representing_smtp_address &&
          transport_message_headers == o.transport_message_headers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [attachments, billing, body, body_html, body_rtf, body_type, categories, companies, item_id, message_class, mileage, recipients, sensitivity, subject, subject_prefix, properties, discriminator, message_body, client_submit_time, conversation_topic, delivery_time, display_bcc, display_cc, display_name, display_name_prefix, display_to, flags, headers, internet_message_id, message_format, normalized_subject, read_receipt_requested, reply_to, sender_address_type, sender_email_address, sender_name, sender_smtp_address, sent_representing_address_type, sent_representing_email_address, sent_representing_name, sent_representing_smtp_address, transport_message_headers].hash
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
