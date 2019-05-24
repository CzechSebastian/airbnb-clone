Rails.application.routes.draw do
  devise_for :users
  root to: 'locations#index'
  resources :locations do
  	resources :bookings, only: [:new, :create, :destroy, :index]
  	resources :favorites, only: [:create]
  end
  resources :bookings, only: [:update, :destroy]
  get "dashboard", to: 'locations#dashboard'
end
