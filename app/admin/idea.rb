ActiveAdmin.register Idea do
  
  menu :priority => 5
  
  config.clear_sidebar_sections!
  
  index do
    column :title
    column "State" do |idea|
      if idea.published?
        link_to "Unpublish", unpublish_admin_idea_path(idea)
      else
        link_to "Publish", publish_admin_idea_path(idea)
      end
    end
    default_actions
  end
  
  show do |idea|
    attributes_table do
      row :title
      row :idea
      row :name
      row :twitter_handle
      row "Published" do 
        (idea.published) ? "Yes" : "No"
      end
    end
  end
  
  form do |f|
    f.inputs "State" do
      f.input :published
    end
    f.inputs "Details" do
      f.input :title
      f.input :name
      f.input :twitter_handle
      f.input :idea, :as => :text, :input_html => { :rows => 10 }
    end
    f.buttons
  end
  
  member_action :publish do
    idea = Idea.find(params[:id])
    idea.published = true
    idea.save
    redirect_to admin_dashboard_path
  end
  
  member_action :unpublish do
    idea = Idea.find(params[:id])
    idea.published = false
    idea.save
    redirect_to admin_ideas_path
  end
  
end
