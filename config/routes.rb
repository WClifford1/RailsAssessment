Rails.application.routes.draw do
  resources :users
  devise_for :users
  get 'home/index'
  # get 'listing/index'
  # get 'listing/show'
  # get 'listing/new'
  # get 'listing/create'
  # get 'listing/edit'
  resources :listings, :users

  # post 'listing/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "listings#index"
end
