class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def markdown_preview
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    render :inline => markdown.render(params[:data]).html_safe
  end
  
  def not_found
    respond_to do |format|
      format.html { render 'errors/404', :status => 404 }
      format.any { render 'errors/404', :status => 404, :formats => [:html], :layout => 'application', :content_type => Mime[:html] }
    end
  end
  
end
