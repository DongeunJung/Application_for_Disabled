Rails.application.routes.draw do
	root 'sessions#new'
	
	resources :members
	resources :sessions, only:[:new, :create, :destroy]
end
