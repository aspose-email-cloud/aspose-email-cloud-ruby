# frozen_string_literal: true

require 'rspec'
require_relative '../lib/aspose-email-cloud'
require 'securerandom'
require 'io/console'
require 'base64'
module OtherSpec
  include AsposeEmailCloud

  # A set of autotests to check main SDK logic
  describe 'Other specs' do
    include_context 'spec base'
    # 'File' field should be a File object,
    # this is the only way for SDK to recognize that it is the file to upload
    it 'Files support test', :pipeline do
      sample = File.new(File.join(__dir__, 'data', 'sample.ics'))
      file_name = SecureRandom.uuid.to_s + '.ics'
      path = "#{@folder}/#{file_name}"
      @api.upload_file(UploadFileRequestData.new(path, sample, @storage))
      exist = @api.object_exists(ObjectExistsRequestData.new(path, @storage))
      expect(exist.exists).to be true
      downloaded = @api.download_file(DownloadFileRequestData.new(path, @storage))
      content = IO.read(downloaded)
      expect(content).to include('Broadway')
    end

    it 'Discover email config', :pipeline do
      configs = @api.discover_email_config(
        DiscoverEmailConfigRequestData.new('example@gmail.com', true))
      expect(configs.value.count).to be >= 2
      smtp = configs.value.find { |item| item.protocol_type == 'SMTP' }
      expect(smtp.host).to eq 'smtp.gmail.com'
    end

    it 'Check disposable email', :pipeline do
      disposable = @api.is_email_address_disposable(
        IsEmailAddressDisposableRequestData.new('example@mailcatch.com'))
      expect(disposable.value).to be true
      regular = @api.is_email_address_disposable(
        IsEmailAddressDisposableRequestData.new('example@gmail.com'))
      expect(regular.value).to be false
    end

    it 'Check EmailClientAccount', :pipeline do
      account = EmailClientAccount.new(
        'smtp.gmail.com',
        551,
        'SSLAuto',
        'SMTP',
        EmailClientAccountPasswordCredentials.new(
          'login', nil, 'password'))
      file_name = SecureRandom.uuid.to_s + '.account'
      @api.save_email_client_account(
        SaveEmailClientAccountRequestData.new(
          StorageFileRqOfEmailClientAccount.new(
            account, StorageFileLocation.new(@storage, @folder, file_name))))
      result = @api.get_email_client_account(GetEmailClientAccountRequestData.new(
                                               file_name, @folder, @storage))
      expect(result.credentials.discriminator).to eq(account.credentials.discriminator)
      expect(result.credentials.password).to eq(account.credentials.password)
      expect(result.host).to eq(account.host)
    end

    it 'Check EmailClientMultiAccount', :pipeline do
      # Create multi account object
      multi_account = EmailClientMultiAccount.new(
        [EmailClientAccount.new('imap.gmail.com', 993, 'SSLAuto', 'IMAP',
                                EmailClientAccountPasswordCredentials.new(
                                  'example@gmail.com', nil, 'password')),
         EmailClientAccount.new(
           'exchange.outlook.com', 443, 'SSLAuto', 'EWS',
           EmailClientAccountOauthCredentials.new(
             'example@outlook.com', nil, 'client_id', 'client_secret', 'refresh_token'))],
        EmailClientAccount.new('smtp.gmail.com', 465, 'SSLAuto', 'SMTP',
                               EmailClientAccountPasswordCredentials.new(
                                 'example@gmail.com', nil, 'password')))
      file_name = SecureRandom.uuid.to_s + '.multi.account'
      folder = @folder
      storage = @storage
      # Save multi account
      @api.save_email_client_multi_account(
        SaveEmailClientMultiAccountRequestData.new(
          StorageFileRqOfEmailClientMultiAccount.new(
            multi_account,
            StorageFileLocation.new(storage, folder, file_name))))
      # Get multi account object from storage
      multi_account_from_storage = @api.get_email_client_multi_account(
        GetEmailClientMultiAccountRequestData.new(
          file_name, folder, storage))

      expect(multi_account_from_storage.receive_accounts.count).to eq(2)
      expect(multi_account_from_storage.send_account.credentials.discriminator)
        .to eq(multi_account.send_account.credentials.discriminator)
    end
  end
end
