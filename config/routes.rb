Rails.application.routes.draw do
	root 'main#index'
	
	resources :members do 
		resources :histories, only:[:update]
		resources :bookmarks, only:[:create]
	end
	
	resources :restaurants, only:[:index, :show] do
		resources :comments, only:[:create]
	end
	
	resources :accomodations, only:[:index, :show] do
		resources :comments, only:[:create]
	end
	
	resources :sessions, only:[:new, :create, :destroy]
	resources :histories, only:[:index, :destroy]
	resources :bookmarks, only:[:index]
	resources :comments
	resources :about, only:[:index]
	resources :map, only:[:index]
	
	get 'bookmarks/show_restrs' => 'bookmarks#show_restrs'
	get 'bookmarks/show_accoms' => 'bookmarks#show_accoms'
end
