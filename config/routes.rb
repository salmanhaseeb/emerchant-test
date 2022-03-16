Rails.application.routes.draw do

  # root 'merchants/transactions#index'

  scope module: 'admins', path: 'admins' do
    resources :merchants, except: :new
    resources :transactions, only: %i[show index]
    resources :authorize_transactions, only: %i[show index], controller: 'transactions'
    resources :charge_transactions, only: %i[show index], controller: 'transactions'
    resources :refund_transactions, only: %i[show index], controller: 'transactions'
    resources :reversal_transactions, only: %i[show index], controller: 'transactions'
  end

  namespace :merchants do
    resources :transactions, only: %i[index]
    resources :authorize_transactions, only: %i[index], controller: 'transactions'
    resources :charge_transactions, only: %i[index], controller: 'transactions'
    resources :refund_transactions, only: %i[index], controller: 'transactions'
    resources :reversal_transactions, only: %i[index], controller: 'transactions'
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
