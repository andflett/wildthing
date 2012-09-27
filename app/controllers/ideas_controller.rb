class IdeasController < ApplicationController

	def create
	  @idea = Idea.new(params[:idea])
    if @idea.save
      flash[:notice] = "Thanks for adding to the conversation! We'll publish your idea soon."
      redirect_to ideas_path
    else
      redirect_to index_path
    end
	end
	
	def index
	  @ideas = Idea.published
	end

end