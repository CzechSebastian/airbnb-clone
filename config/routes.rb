Rails.application.routes.draw do
  devise_for :users
  root to: 'locations#index'
  resources :locations
  resources :bookings, only: [:new, :create, :destroy, :index]

  get "dashboard", to: 'locations#dashboard'

end
