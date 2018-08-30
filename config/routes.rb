Rails.application.routes.draw do

  root 'static_pages#home', as: :home
  get 'about', to: 'static_pages#about', as: :about
  get 'contact', to: 'static_pages#contact', as: :contact

  get 'shop', to: 'items#index', as: :items
  get 'kitty/:id', to: 'items#show', as: :item


  get 'profile', to: 'user#profile', as: :profile

  get 'cart', to: 'carts#show', as: 'cart_show'
  post 'carts/add_item', to: 'carts#add_item', as: 'add_item'
  post 'carts/remove_item', to: 'carts#remove_item', as: 'remove_item'

  get 'orders/new', to: 'orders#new', as: 'order'
  get 'orders/complete', to: 'orders#complete', as:  'order_complete'

  get 'admin', to: 'admins#dashboard', as: 'admin'

  resources :items
  resources :charges
  devise_for :users
  devise_for :users
end
