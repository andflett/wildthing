# encoding: utf-8
class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :panel do
    process :resize_to_fit => [440,nil]
  end

  version :thumbnail do
    process :resize_to_fit => [400,nil]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
