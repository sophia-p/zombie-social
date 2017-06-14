Rails.application.routes.draw do
	resources :zombies
	resources :posts
	resources :sessions, only: [:new, :create, :destroy]
	root 'welcome#index'
end
