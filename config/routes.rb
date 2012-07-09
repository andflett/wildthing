Wildthing::Application.routes.draw do
  
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

	resources :projects, :only => [:show, :index]
	resources :concepts, :only => [:show, :index]	

  match "backing" => "home#backing"
  match "index" => "home#index"
  
  root :to => "home#teaser"
  
end
