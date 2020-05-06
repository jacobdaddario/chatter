Rails.application.routes.draw do
  devise_for :users
	root to: 'chatrooms#index'

  resources :chatrooms, except: [:show]
end
