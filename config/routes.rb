Rails.application.routes.draw do
	root 'home#index'
	devise_for :users
<<<<<<< HEAD
	resources :users
=======

>>>>>>> e2eed0cc1460f015c708fd21a0dae8d6cb59eb18
	resources :orders
	resources :charges
	resources :product
  resources :carts do
    resources :line_items
  end
end
