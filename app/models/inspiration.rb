class Inspiration < ActiveRecord::Base

	attr_accessible :name, :idea
	validates_presence_of :name, :idea

end
