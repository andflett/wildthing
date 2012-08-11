class HomeController < ApplicationController

  def index
    @project = Project.order('created_at DESC').limit(10)
  end

	def teaser
  end
  
  def backing
  end

end
