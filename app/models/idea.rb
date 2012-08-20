class Idea < ActiveRecord::Base

	attr_accessible :title, :idea, :name, :twitter_handle, :published	
	validates_presence_of :title, :idea, :name
	
	def self.published
    self.order('created_at DESC').where('published = true')
  end
  
  def self.unpublished
    self.order('created_at DESC').where('published = false')
  end
  
end
