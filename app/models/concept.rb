class Concept < ActiveRecord::Base

	attr_accessible :title, :description, :created_by, :image
	
	validates_presence_of :title, :description
	
	mount_uploader :image, ::ImageUploader
	
	extend FriendlyId
  friendly_id :title, use: :slugged

end
