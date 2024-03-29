class Project < ActiveRecord::Base

	attr_accessible :title, :description, :url, :image, :category_id, :featured, :body
		
	validates_presence_of :title, :description
		
	belongs_to :category
	
	extend FriendlyId
  friendly_id :title, use: :slugged
  
  before_save :check_url_scheme
  
  mount_uploader :image, ImageUploader
  
  def self.featured
    self.where('featured = true').limit(4) || nil
  end

end
