Rails.application.routes.draw do
  devise_for :users
  resources :order_items
  resources :orders
  resources :products
  resource  :cart, only: [:show]
  resources :charges
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
