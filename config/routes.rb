HipsterDrinks::Application.routes.draw do
  root to: "static_pages#home"
  resources :drinks
	resources :users do
		member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
	resource :session, :only => [:new, :create, :destroy]
end
