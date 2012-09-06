class PledgesController < ApplicationController

	def create
	  
	  @pledge = Pledge.new(params[:pledge])
	  	  
    if @pledge.save
      
      session[:pledged] = true
      
      if @pledge.subscribed?
        mc = Gibbon.new('932a6959829feb080dd18797db38d42d-us5')
        puts mc.list_subscribe({:id => '7bbb79ac57', :email_address => @pledge.email})
      end
      
      redirect_to projects_path
      
    else
      
      flash[:notice] = "Sorry, we couldn't save your pledge, it looks like you've pledged before."
      redirect_to root_path
      
    end
    
	end
	
	def new
	  redirect_to root_path
	end

end