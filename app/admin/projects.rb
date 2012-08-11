ActiveAdmin.register Project do
  
  menu :priority => 2
  
  filter :title
  filter :category
  
  index do
    column :title
    column :created_by
    default_actions
  end
  
  show do |brief|
    attributes_table do
      row :title
      row :url
    end
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :url
      f.input :image
    end
    f.buttons
  end
  
end
