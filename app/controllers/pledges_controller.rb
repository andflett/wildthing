class PledgesController < ApplicationController

	def new
	  @pledge = Pledge.new
	end
	
	def create
	  @pledge = Pledge.new(params[:pledge])
    if @pledge.save
      #flash[:notice] = "Thanks, [download your certificate here]"
      session[:pledged] = true
      redirect_to pledged_path
    else
      redirect_to new_pledge_path
    end
	end
	
	def pledged
	  @pledge_count = Pledge.count
	end

end