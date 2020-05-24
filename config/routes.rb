Rails.application.routes.draw do
  get 'memberships/index'
  get 'memberships/new'
  get 'memberships/destroy'
  get 'memberships/create'
 root to: "home#index"
 devise_for :users
 resources :groups
 resources :posts
 resources :memberships
end
