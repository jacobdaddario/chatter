Rails.application.routes.draw do
	root to: 'chatrooms#index'

  devise_for :users
  resources :subscriptions
  resources :chatrooms, except: [:show]
end
