Rails.application.routes.draw do
 root to: "home#index"
 devise_for :users
 resources :groups
 resources :posts
 resources :memberships
 post '/groups/:id', action: :create_membership, controller: 'groups'
end
