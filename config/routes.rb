HipsterDrinks::Application.routes.draw do
  root to: "static_pages#home"
  resources :drinks
  resources :ingredients
	resources :users do
		member do
      get :following, :followers
      get :favorite_drinks
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  
	resources :comments, :only => [:create, :destroy]
	resource :session, :only => [:new, :create, :destroy]

end
