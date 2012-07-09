ActiveAdmin.register Concept do
  
  menu :priority => 2
  
  filter :title
  
  index do
    column :title
    column :created_by
    default_actions
  end
  
  show do |brief|
    attributes_table do
      row :title
      row :created_by
      row :description
    end
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :created_by
      f.input :image
      f.input :description
    end
    f.buttons
  end
  
end
