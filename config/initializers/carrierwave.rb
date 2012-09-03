if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end

if Rails.env.development?
  CarrierWave.configure do |config|
    config.storage = :file
  end
end

if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_credentials = { 
      :provider               => 'AWS', 
      :aws_access_key_id      => ENV['s3_key_id'], 
      :aws_secret_access_key  => ENV['s3_secret_key'],
      :region                 => 'Ireland'
    } 
    config.fog_directory  = ENV['bucket']
    config.fog_public     = false
  end
end