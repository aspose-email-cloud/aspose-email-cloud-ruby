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

    it 'Discover email config', :pipeline do
      configs = @api.email_config.discover(
        EmailConfigDiscoverRequest.new(address: 'example@gmail.com', fast_processing: true))
      expect(configs.value.count).to be >= 2
      smtp = configs.value.find { |item| item.protocol_type == 'SMTP' }
      expect(smtp.host).to eq 'smtp.gmail.com'
    end

    it 'Check disposable email', :pipeline do
      disposable = @api.disposable_email.is_disposable(
        DisposableEmailIsDisposableRequest.new(address: 'example@mailcatch.com'))
      expect(disposable.value).to be true
      regular = @api.disposable_email.is_disposable(
        DisposableEmailIsDisposableRequest.new(address: 'example@gmail.com'))
      expect(regular.value).to be false
    end

    it 'Check EmailClientAccount', :pipeline do
      account = EmailClientAccount.new(
        host: 'smtp.gmail.com',
        port: 551,
        security_options: 'SSLAuto',
        protocol_type: 'SMTP',
        credentials: EmailClientAccountPasswordCredentials.new(
          login: 'login', password: 'password'))
      file_name = SecureRandom.uuid.to_s + '.account'
      @api.client.account.save(
        ClientAccountSaveRequest.new(
          storage_file: StorageFileLocation.new(
            storage: @storage,
            folder_path: @folder,
            file_name: file_name),
          value: account))
      result = @api.client.account.get(
        ClientAccountGetRequest.new(
          file_name: file_name, folder: @folder, storage: @storage))
      expect(result.credentials.discriminator).to eq(account.credentials.discriminator)
      expect(result.credentials.password).to eq(account.credentials.password)
      expect(result.host).to eq(account.host)
    end

    it 'Check EmailClientMultiAccount', :pipeline do
      # Create multi account object
      multi_account = EmailClientMultiAccount.new(
        receive_accounts: [
          EmailClientAccount.new(
            host: 'imap.gmail.com',
            port: 993,
            security_options: 'SSLAuto',
            protocol_type: 'IMAP',
            credentials: EmailClientAccountPasswordCredentials.new(
              login: 'example@gmail.com', password: 'password')),
          EmailClientAccount.new(
            host: 'exchange.outlook.com',
            port: 443,
            security_options: 'SSLAuto',
            protocol_type: 'EWS',
            credentials: EmailClientAccountOauthCredentials.new(
              login: 'example@outlook.com',
              client_id: 'client_id',
              client_secret: 'client_secret',
              refresh_token: 'refresh_token'))],
        send_account: EmailClientAccount.new(
          host: 'smtp.gmail.com',
          port: 465,
          security_options: 'SSLAuto',
          protocol_type: 'SMTP',
          credentials: EmailClientAccountPasswordCredentials.new(
            login: 'example@gmail.com', password: 'password')))
      file_name = SecureRandom.uuid.to_s + '.multi.account'
      # Save multi account
      @api.client.account.save_multi(
        ClientAccountSaveMultiRequest.new(
          storage_file: StorageFileLocation.new(
            storage: @storage,
            folder_path: @folder,
            file_name: file_name),
          value: multi_account))
      # Get multi account object from storage
      multi_account_from_storage = @api.client.account.get_multi(
        ClientAccountGetMultiRequest.new(
          file_name: file_name, folder: @folder, storage: @storage))

      expect(multi_account_from_storage.receive_accounts.count).to eq(2)
      expect(multi_account_from_storage.send_account.credentials.discriminator)
        .to eq(multi_account.send_account.credentials.discriminator)
    end
  end
end
