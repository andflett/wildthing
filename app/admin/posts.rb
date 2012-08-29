ActiveAdmin.register Post, :as => "Blog Post" do
  
  menu :priority => 5
  
  filter :title
  
  index do
    column :title
    default_actions
  end
  
  show do |post|
    attributes_table do
      row :title
      row :abstract
      row :image do
        image_tag(post.image.thumbnail) unless post.image.url.nil?
      end
      row :body do
        simple_format(post.body).html_safe
      end
    end
  end
  
  form :html => { :enctype => "multipart/form-data" }  do |f|
    f.inputs "Details" do
      f.input :title
      f.input :abstract, :as => :text, :input_html => { :rows => 5 }
      f.input :image
      f.input :body
    end
    f.buttons
  end
  
end
