Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
	root 'home#index'
	devise_for :users

	resources :orders
  resources :products
  resources :carts do
    resources :line_items
  end
end
