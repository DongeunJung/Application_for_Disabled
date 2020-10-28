Rails.application.routes.draw do
	root 'main#index'
	
	resources :members
	resources :restaurants, only:[:index, :create, :show]
	resources :sessions, only:[:new, :create, :destroy]
	
	get 'about/index' => 'about#index'
end
