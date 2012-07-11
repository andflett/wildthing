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
      row :description
      row :idea
      row :presentation
      row :source_code
      row :prototype
    end
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :description
      f.input :idea
      f.input :image
      f.input :presentation
      f.input :source_code
      f.input :prototype
    end
    f.buttons
  end
  
end
