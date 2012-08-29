class PledgesController < ApplicationController

	def new
	  @pledge = Pledge.new
	end
	
	def create
	  
	  @pledge = Pledge.new(params[:pledge])
	  	  
    if @pledge.save
      
      session[:pledged] = true
      
      if @pledge.subscribed? && Rails.env.production? 
        Gibbon.new(ENV['mailchimp_api_key']).list_subscribe(:id => ENV['mailchimp_api_list'], :email_address => params[:email])
      end
      
      redirect_to root_path
      
    else
      render "new"
    end
    
	end

end