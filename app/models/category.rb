class Category < ActiveRecord::Base

	attr_accessible :title
	validates_presence_of :title
	
	has_many :projects
	
	extend FriendlyId
  friendly_id :title, use: :slugged

end
