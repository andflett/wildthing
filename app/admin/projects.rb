ActiveAdmin.register Project do
  
  menu :priority => 1
  
  filter :category
  
  index do
    column :title
    column :category
    column :featured
    default_actions
  end
  
  show do |project|
    attributes_table do
      row :category
      row :featured
      row :title
      row :url
      row :description
      row :body
      row :image do
        image_tag(project.image.thumbnail) unless project.image.url.nil?
      end
    end
  end
  
   form :html => { :enctype => "multipart/form-data" }  do |f|
    f.inputs "Meta" do
      f.input :category
      f.input :featured
    end
    f.inputs "Details" do
      f.input :title
      f.input :url
      f.input :image
      f.input :description, :as => :text, :input_html => { :rows => 3 }
      f.input :body, :as => :text, :input_html => { :rows => 24 }
    end
    f.buttons
  end
  
end
