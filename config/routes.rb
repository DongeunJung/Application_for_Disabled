Rails.application.routes.draw do
	root 'main#index'
	
	resources :members
	resources :restaurants, only:[:index, :create, :show]
	resources :sessions, only:[:new, :create, :destroy]
	resources :historys, only:[:index]
	
	get 'about/index' => 'about#index'
	get 'map/index' => 'map#index'
end
