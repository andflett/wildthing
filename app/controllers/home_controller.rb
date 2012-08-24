class HomeController < ApplicationController

  def index
    @projects = Project.order('created_at DESC').limit(2)
    @pledge_count = Pledge.count
  end
  
  def background
  end
  
  def partners
  end

end
