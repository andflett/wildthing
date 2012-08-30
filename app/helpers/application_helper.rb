module ApplicationHelper
  
  def markdown
    Redcarpet::Markdown.new(Redcarpet::Render::HTML,:autolink => true, :space_after_headers => true)
  end
  
  def is_home?
    params[:controller] == "home" && params[:action] == "index"
  end
  
end
