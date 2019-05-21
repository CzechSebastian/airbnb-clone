Rails.application.routes.draw do
  devise_for :users
  root to: 'locations#index'
  resources :locations do
  	resources :bookings, only: [:new, :create, :destroy, :index]
  end
  get "dashboard", to: 'locations#dashboard'
end
