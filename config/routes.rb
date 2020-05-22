Rails.application.routes.draw do
  get 'home/index'
  get 'home/new'
 devise_for :users
 resources :posts
	root to: "home#index"
end
