HipsterDrinks::Application.routes.draw do
  root to: "static_pages#home"
  resources :drinks
	resources :users
	resource :session, :only => [:new, :create, :destroy]
end
