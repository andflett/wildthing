# encoding: utf-8
class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :grid do
    process :resize_to_fit => [225,nil]
  end

  version :thumbnail do
    process :resize_to_fit => [400,nil]
  end

	version :inspiration do
    process :resize_to_fill => [259,259]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
