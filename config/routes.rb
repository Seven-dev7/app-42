Rails.application.routes.draw do
 root to: "home#index"
 devise_for :users, :controllers => {
 	:omniauth_callbacks => 'users/omniauth_callbacks'
 }
 resources :groups
 resources :posts
 resources :memberships
 post '/groups/:id', action: :create_membership, controller: 'groups'
end
