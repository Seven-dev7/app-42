Rails.application.routes.draw do
  get 'home/index'
  get 'home/new'
 devise_for :users
	root to: "home#index"
end
