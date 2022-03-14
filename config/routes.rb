Rails.application.routes.draw do
  scope module: 'admins', path: 'admins' do
    resources :merchants, except: :new
    resources :transactions, only: [:show, :index]
    resources :authorize_transactions, only: [:show, :index], controller: "transactions"
    resources :charge_transactions, only: [:show, :index], controller: "transactions"
  end
  devise_for :admins
  devise_for :merchants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
