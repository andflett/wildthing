Wildthing::Application.routes.draw do
  
  ActiveAdmin.routes(self)

  match "markdown_preview" => "application#markdown_preview"
  
  devise_for :admin_users, ActiveAdmin::Devise.config

	resources :projects, :only => [:show]
	resources :ideas, :only => [:create,:index]
	resources :posts, :only => [:show,:index]
	resources :pledges, :only => [:create,:new]
	
  match "background" => "home#background"
  match "partners" => "home#partners"
  
  root :to => "home#index"
  
end
