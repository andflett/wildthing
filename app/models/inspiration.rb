class Inspiration < ActiveRecord::Base

	attr_accessible :name, :age, :idea
	
	validates_presence_of :name, :idea

end
