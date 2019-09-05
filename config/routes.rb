Rails.application.routes.draw do
	root 'products#index'
	devise_for :users
	resources :charges
  resources :users
	resources :orders
  resources :products do
    resources :line_items
  end
  resources :carts

end
