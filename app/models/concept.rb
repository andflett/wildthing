class Concept < ActiveRecord::Base

	attr_accessible :title, :description, :created_by, :image, :todo, :source_code, :presentation, :prototype, :idea
	
	validates_presence_of :title, :description
	
	mount_uploader :image, ::ImageUploader
	
	extend FriendlyId
  friendly_id :title, use: :slugged

  def hashtag
    "##{self.title.gsub(' ','').lowercase}"
  end

end
