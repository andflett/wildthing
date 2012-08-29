class Inspiration < ActiveRecord::Base

	attr_accessible :vimeo_id, :title
	validates_presence_of :vimeo_id, :title

end
