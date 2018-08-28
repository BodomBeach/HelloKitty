Rails.application.routes.draw do
  root 'items#index'
  resources :items
  resources :charges
  devise_for :users
  get 'carts/show', to: 'carts#show', as: 'cart_show'
  post 'carts/add_item', to: 'carts#add_item', as: 'add_item'
end
