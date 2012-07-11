class HomeController < ApplicationController

  def index
    @concepts = Concept.limit(2)
    @project = Project.order('created_at DESC').limit(1).first
  end

	def teaser
  end
  
  def backing
  end

end
