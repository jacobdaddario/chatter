Rails.application.routes.draw do
	root to: 'chatrooms#index'

  resources :chatrooms
end
