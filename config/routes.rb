Rails.application.routes.draw do
	root 'main#index'
	
	resources :members do 
		resources :histories, only:[:update]
		resources :bookmarks, only:[:update]
	end
	resources :restaurants, only:[:index, :show]
	resources :accomodations, only:[:index, :show]
	resources :sessions, only:[:new, :create, :destroy]
	resources :historys, only:[:index]
	resources :comments
	
	get 'about/index' => 'about#index'
	get 'map/index' => 'map#index'
end
