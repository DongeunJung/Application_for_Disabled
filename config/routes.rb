Rails.application.routes.draw do
	root 'main#index'
	
	resources :members do 
		resources :histories, only:[:update]
		resources :bookmarks, only:[:update]
	end
	
	resources :restaurants, only:[:index, :show] do
		resources :comments, only:[:create]
	end
	
	resources :accomodations, only:[:index, :show] do
		resources :comments, only:[:create]
	end
	
	resources :sessions, only:[:new, :create, :destroy]
	resources :histories, only:[:index]
	resources :bookmarks, only:[:index]
	resources :comments
	
	get 'about/index' => 'about#index'
	get 'map/index' => 'map#index'
end
