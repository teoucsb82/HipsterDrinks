HipsterDrinks::Application.routes.draw do
  root to: "static_pages#home"
	resources :users, :only => [:new, :create]
	resource :session, :only => [:new, :create, :destroy]
end
