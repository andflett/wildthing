ActiveAdmin.register Inspiration do
  
  menu :priority => 4
  
  filter :age
  
  index do
    column :name
    column :age
    default_actions
  end
  
  show do |brief|
    attributes_table do
      row :name
      row :age
      row :idea
    end
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :age
      f.input :idea
    end
    f.buttons
  end
  
end
