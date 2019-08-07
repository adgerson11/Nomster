# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'                        # required
    config.fog_public = true
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     ENV["AKIAXC4BOX7NERJSLRQ7"],        # required
      aws_secret_access_key: ENV["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"],        # required
    }
    config.fog_directory  = ENV["nomsterphotobucket"]              # required
  end