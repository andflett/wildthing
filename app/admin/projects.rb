ActiveAdmin.register Project do
  
  menu :priority => 2
  
  filter :title
  
  index do
    column :title
    default_actions
  end
  
  show do |project|
    attributes_table do
      row :title
      row :url
      row :description
      row :image do
        image_tag(project.image.thumbnail) unless project.image.url.nil?
      end
    end
  end
  
   form :html => { :enctype => "multipart/form-data" }  do |f|
    f.inputs "Details" do
      f.input :title
      f.input :url
      f.input :image
      f.input :description
    end
    f.buttons
  end
  
end
