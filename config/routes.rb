Rails.application.routes.draw do
	root 'main#index'
	
	resources :members
	resources :sessions, only:[:new, :create, :destroy]
end
