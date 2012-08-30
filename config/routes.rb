Wildthing::Application.routes.draw do
  
  ActiveAdmin.routes(self)

  match "markdown_preview" => "application#markdown_preview"
  
  devise_for :admin_users, ActiveAdmin::Devise.config

	resources :projects, :only => [:show,:index]
	resources :ideas, :only => [:create,:index]
	resources :posts, :only => [:show,:index]
	resources :pledges, :only => [:create]
	resources :partners, :only => [:index]
	
  match "manifesto" => "home#manifesto"
  match "privacy" => "home#privacy"
  match "the-nature-film" => "home#film", :as => "film"
  
  root :to => "home#index"
  
end
