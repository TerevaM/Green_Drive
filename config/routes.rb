Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'status', to: 'bookings#status'
  resources :cars do
    resources :bookings, only: [:new, :create, :show ]
  end

  resources :bookings, only: [:index, :destroy, :edit, :update]
end
