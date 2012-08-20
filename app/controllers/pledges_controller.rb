class PledgesController < ApplicationController

	def new
	  @pledge = Pledge.new
	end
	
	def create
	  @pledge = Pledge.new(params[:pledge])
	  p @pledge.inspect
    if @pledge.save
      flash[:notice] = "Thanks, pledgeorised."
      redirect_to index_path
    else
      redirect_to new_pledge_path
    end
	end

end