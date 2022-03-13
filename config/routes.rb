Rails.application.routes.draw do
  namespace :admins do
    resources :merchants
  end
  devise_for :admins
  devise_for :merchants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
