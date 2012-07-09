class HomeController < ApplicationController

  def index
    @concepts = Concept.limit(4)
    @projects = Project.limit(4)
  end

	def teaser
  end
  
  def backing
  end

end
