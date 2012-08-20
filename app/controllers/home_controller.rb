class HomeController < ApplicationController

  def index
    @featured_project = Project.featured
    @projects = Project.order('created_at DESC').limit(11)
    @ideas = Idea.published.limit(3) 
    @post = Post.first
    @pledge_count = Pledge.count
    @idea = Idea.new
  end

	def teaser
  end
  
  def background
  end
  
  def partners
  end

end
