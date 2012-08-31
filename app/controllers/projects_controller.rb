class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @categories = Category.where('title != "Wild Thing"')
  end

	def show
	  @project = Project.find_by_slug(params[:id])
	end

end
