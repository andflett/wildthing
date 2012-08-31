class HomeController < ApplicationController

  def index
    
    @wild_thing_projects = Category.find_by_title('Wild Thing').projects.limit(2)
    @projects = Project.featured
    @pledge_count = Pledge.count
    @inspiration = Inspiration.order('created_at DESC').first
    @ideas = Idea.where('published = true').order('created_at DESC').limit(5)
    
    @idea = Idea.new
    @pledge = Pledge.new
    
  end
  
  def manifesto
  end

  def film
    @inspirations = Inspiration.all
  end

end
