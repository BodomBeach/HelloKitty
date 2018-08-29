Rails.application.routes.draw do
  root 'static_pages#home', as: :home
  get 'about', to: 'static_pages#about', as: :about
  get 'contact', to: 'static_pages#contact', as: :contact
  resources :items
  resources :charges
  devise_for :users
  get 'carts/show', to: 'carts#show', as: 'cart_show'
  post 'carts/add_item', to: 'carts#add_item', as: 'add_item'
end
