class Project < ActiveRecord::Base

	attr_accessible :title, :description, :url
	
	belongs_to :category
	
	validates_presence_of :title, :description
	
	mount_uploader :image, ::ImageUploader
	
	extend FriendlyId
  friendly_id :title, use: :slugged
  
  before_save :check_url_scheme

end
