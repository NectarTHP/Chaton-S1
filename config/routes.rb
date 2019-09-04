Rails.application.routes.draw do
  get 'welcome/homepage'
	root 'home#index'
	root 'welcome#homepage'
	devise_for :users
	resources :users
end
