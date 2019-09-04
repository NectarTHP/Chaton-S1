Rails.application.routes.draw do
	root 'home#index'
	devise_for :users
	resources :users
	resources :carts
	resources :orders
	resources :products
	resources :line_items
end
