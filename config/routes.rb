Rails.application.routes.draw do

  root 'admins/transactions#index'

  scope module: 'admins', path: 'admins' do
    resources :merchants, except: :new
    resources :transactions, only: %i[show index]
    resources :authorize_transactions, only: %i[show index], controller: 'transactions'
    resources :charge_transactions, only: %i[show index], controller: 'transactions'
  end

  namespace :api do
    namespace :v1 do
      namespace :merchants do
        post ':merchant_id/transactions', to: 'transactions#create'
      end
    end
  end

  devise_for :admins
  devise_for :merchants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
