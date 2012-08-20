class Post < ActiveRecord::Base

	attr_accessible :title, :body, :abstract, :image
	validates_presence_of :title, :body, :abstract
		
	extend FriendlyId
  friendly_id :title, use: :slugged
  
  mount_uploader :image, ImageUploader
  
  paginates_per 10
  
end
