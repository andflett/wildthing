ActiveAdmin.register Inspiration do
  
  menu :priority => 3
  
  config.clear_sidebar_sections!

  index do
    column :title
    column :vimeo_id
    default_actions
  end
  
  show do |project|
    attributes_table do
      row :title
      row :vimeo_id
    end
  end
  
   form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :vimeo_id, :label => "Vimeo ID"
    end
    f.buttons
  end
  
end
