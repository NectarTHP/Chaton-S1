Rails.application.routes.draw do
	root 'home#index'
	devise_for :users
	resources :users
	resources :orders
  resources :products
  resources :carts do
    resources :line_items
  end
end
