Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
	root 'home#index'
	devise_for :users
<<<<<<< HEAD
	resources :orders
	resources :charges
	resources :product
  resources :carts do
=======
  resources :users
	resources :orders
  resources :products do
>>>>>>> c3b7f988a9ea103bdc85be37ea8807fde467f9c4
    resources :line_items
  end
  resources :carts

end
