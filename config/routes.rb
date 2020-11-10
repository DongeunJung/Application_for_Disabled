Rails.application.routes.draw do
	root 'main#index'
	
	resources :members do 
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
	
	resources :bookmarks, only:[:index, :destroy]
	resources :comments
	resources :about, only:[:index]
	resources :map, only:[:index]
	
	get 'bookmarks/show_restrs' => 'bookmarks#show_restrs'
	get 'bookmarks/show_accoms' => 'bookmarks#show_accoms'
		
	post 'restaurants/filter' => 'restaurants#filter'
	post 'accomodations/filter' => 'accomodations#filter'
end
