class Pledge < ActiveRecord::Base

	attr_accessible :name, :facebook, :twitter, :email, :subscribed
	
	validates_presence_of :name, :email
	validates_uniqueness_of :email, :message => "You have already pledged using this email address"
  
end
