ActiveAdmin.register Pledge do
  
  menu :priority => 6
  
  config.clear_sidebar_sections!
  
  index do
    column :name
    column :email
  end
  
end
