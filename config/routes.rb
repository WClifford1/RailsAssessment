Rails.application.routes.draw do
  resources :orders
  resources :carts
  resources :listings
  resources :charges
  devise_for :users
  root "listings#index"
end