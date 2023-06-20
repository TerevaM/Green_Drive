Rails.application.routes.draw do
  devise_for :users
  resources :cars
  root to: "cars#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'cars#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
