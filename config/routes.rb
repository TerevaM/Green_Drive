Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :cars do
    resources :bookings, only: [:new, :create, :show ]
  end
  patch 'bookings/:id/accept', to: 'bookings#accept', as: 'accept_booking'
  resources :bookings, only: [:index, :destroy]
end
