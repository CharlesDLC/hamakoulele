Rails.application.routes.draw do
  get 'hamacs/index'

  devise_for :users
  root to: 'pages#home'


  resources :hamacs, only: [ :index, :show ] do
    resources :bookings, only: [ :new, :create]
  end

  resource :profile, only: [ :show ]

  namespace :traveler do
    resources :bookings, only: [ :index ] do
      member do
        patch 'cancel'
      end
    end
  end

  namespace :owner do
    resources :hamacs

    resources :bookings, only: [ :index ] do
      member do
        patch 'accept'
        patch 'refuse'
      end
    end
  end

  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
