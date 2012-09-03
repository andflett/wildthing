module ApplicationHelper
  
  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML,:autolink => true, :space_after_headers => true)
  end
  
  def is_home?
    params[:controller] == "home" && params[:action] == "index"
  end
  
  def is_manifesto?
    params[:controller] == "home" && params[:action] == "manifesto"
  end
  
  def is_projects?
    params[:controller] == "projects"
  end
  
  def is_film?
    params[:controller] == "home" && params[:action] == "film"
  end
  
end
