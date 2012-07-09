ActiveAdmin.register Category do
  
  menu :priority => 5
  
  filter :title
  
  index do
    column :title
    default_actions
  end
  
  show do |brief|
    attributes_table do
      row :title
    end
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :title
    end
    f.buttons
  end
  
end
