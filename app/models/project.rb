class Project < ActiveRecord::Base

	attr_accessible :title, :description, :url, :image
		
	validates_presence_of :title, :description
		
	extend FriendlyId
  friendly_id :title, use: :slugged
  
  before_save :check_url_scheme
  
  mount_uploader :image, ImageUploader
  
  def self.featured
    self.find_by_featured(true) || self.first
  end

end
