Rails.application.routes.draw do
  get 'orders/new'
  get 'success', to: "orders#create"
  
  # get 'orders/show'
  # get 'orders/index'
  # get 'orders/new'
  # get 'orders/destroy'
  # get 'orders/update'
  # get 'orders/create'
  devise_for :users
  get 'home/index'
  # get 'listing/index'
  # get 'listing/show'
  # get 'listing/new'
  # get 'listing/create'
  # get 'listing/edit'
  resources :listings
  resources :orders
  # post 'listing/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "listings#index"
end
