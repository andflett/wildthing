class HomeController < ApplicationController

  def index
    
    @wild_thing_projects = Category.find_by_title('Wild Thing').projects.limit(2)
    @projects = Project.featured
  
    @inspirations = Inspiration.order('created_at DESC').limit(2)
    
    @ideas = Idea.where('published = true').order('created_at DESC').limit(3)
    @idea = Idea.new
    
    @pledge_count = Pledge.count
    @pledge = Pledge.new
    
  end
  
  def manifesto
    @pledge = Pledge.new
  end

  def film
    @inspirations = Inspiration.all
  end

end
