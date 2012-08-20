class Pledge < ActiveRecord::Base

	attr_accessible :name, :facebook, :twitter, :email
	
	validates_presence_of :name
  
end
