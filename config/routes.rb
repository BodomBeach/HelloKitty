Rails.application.routes.draw do
  root 'static_pages#home', as: :home
  get 'about', to: 'static_pages#about', as: :about
  get 'contact', to: 'static_pages#contact', as: :contact
  resources :items
  devise_for :users
end
