class Inspiration < ActiveRecord::Base

	attr_accessible :vimeo_id
	validates_presence_of :vimeo_id

end
