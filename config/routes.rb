Rails.application.routes.draw do
  get 'listing/index'
  get 'listing/show'
  get 'listing/new'
  get 'listing/create'
  get 'listing/edit'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
