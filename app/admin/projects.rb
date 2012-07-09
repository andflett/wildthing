ActiveAdmin.register Project do
  
  menu :priority => 3
  
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
      row :category
      row :created_by
      row :description
      row :how_to_get_involved
    end
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :url
      f.input :category
      f.input :created_by
      f.input :image
      f.input :description
      f.input :how_to_get_involved
    end
    f.buttons
  end
  
end
