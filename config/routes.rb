Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :locations
  resources :bookings, only: [:new, :create, :destroy, :index]
  resources :users, only: [:new, :create, :show, :index]

end
