Rails.application.routes.draw do
	root 'products#index'

  devise_for :users
	resources :charges
  resources :users
  resources :orders
  resources :carts
  resources :products
    resources :line_items
  


end
