Rails.application.routes.draw do
  devise_for :users
  get 'carts/show'
  
  get 'carts' => 'carts#show'
  

  resources :shops_categories
  resources :products
  resources :categories
  resources :shops, only: [:index, :show]
  
  resources :order_items
  resources :carts, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  root "shops#home"
end
