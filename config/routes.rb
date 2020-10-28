Rails.application.routes.draw do
	root 'main#index'
	
	resources :members
	resources :sessions, only:[:new, :create, :destroy]
	
	get 'about/index' => 'about#index'
	
	get 'restaurants/index' => 'restaurants#index'
	post 'restaurants/create' => 'restaurants#create'
end
