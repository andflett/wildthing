class HomeController < ApplicationController

  def index
    
    @wild_thing_projects = Project.where('category_id = 1').order('created_at DESC').limit(2)
    @projects = Project.where('featured = true').limit(4)
    @pledge_count = Pledge.count
    @inspiration = Inspiration.order('created_at DESC').first
    @ideas = Idea.where('published = true').order('created_at DESC').limit(5)
    
    @idea = Idea.new
    @pledge = Pledge.new
    
  end
  
  def manifesto
  end

  def film
  end

end
