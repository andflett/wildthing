class PledgesController < ApplicationController

	def new
	  @pledge = Pledge.new
	end
	
	def create
	  @pledge = Pledge.new(params[:pledge])
    if @pledge.save
      session[:pledged] = true
      redirect_to root_path
    else
      redirect_to new_pledge_path
    end
	end
	
	def pledged
	  @pledge_count = Pledge.count
	end

end