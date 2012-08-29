ActiveAdmin.register Partner do
  
  menu :priority => 2
  
  config.clear_sidebar_sections!
  
  index do
    column :name
    column :priority
    default_actions
  end
  
  show do |partner|
    attributes_table do
      row :name
      row :url
      row :priority
      row :image do
        image_tag(partner.image.grid) unless partner.image.url.nil?
      end
    end
  end
  
   form :html => { :enctype => "multipart/form-data" }  do |f|
    f.inputs "Details" do
      f.input :name
      f.input :url
      f.input :image
    end
    f.inputs "Order" do
       f.input :priority
    end
    f.buttons
  end
  
end
