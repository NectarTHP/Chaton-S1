Rails.application.routes.draw do
	root 'home#index'
	devise_for :users
	resources :users

	resources :orders
  resources :product
  resources :carts do
    resources :line_items
  end
end
