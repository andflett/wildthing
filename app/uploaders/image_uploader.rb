# encoding: utf-8
class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file
  
  def cache_dir
    "#{Rails.root}/tmp/uploads"
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process :resize_to_fit => [700,nil]

  version :panel do
    process :resize_to_fit => [465,nil]
  end

  version :thumbnail do
    process :resize_to_fill => [227,170]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
