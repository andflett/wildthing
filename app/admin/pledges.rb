ActiveAdmin.register Pledge do
  
  menu :priority => 4
  
  config.clear_sidebar_sections!
  
  index do
    column :name
  end
  
end
