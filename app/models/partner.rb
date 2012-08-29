class Partner < ActiveRecord::Base

	attr_accessible :url, :name, :image, :priority
		
	validates_presence_of :name, :url
	
  before_save :check_url_scheme
  
  mount_uploader :image, ImageUploader

end
