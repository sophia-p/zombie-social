Rails.application.routes.draw do
	match "/404", :to => "errors#not_found", :via => :all
	match "/500", :to => "errors#internal_server_error", :via => :all

	resources :zombies
	resources :posts
	resources :sessions, only: [:new, :create, :destroy]
	root 'welcome#index'
end
