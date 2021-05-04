Rails.application.routes.draw do
  #resources :friends
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'friends', to: 'friends#index'
  get 'friends/alt_friend', to: 'friends#alt_friend'
  get 'friends/new', to: 'friends#new'
  get 'friends/:id', to: 'friends#show', as: 'friend'
  get 'friends/:id/edit', to: 'friends#edit', as: 'edit_friend'
  post 'friends', to: 'friends#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
