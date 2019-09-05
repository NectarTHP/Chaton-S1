Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
	root 'home#index'
	devise_for :users
	resources :users

	resources :orders
  resources :products do
    resources :line_items
  end
  resources :carts

end
