Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pets
  resources :users, only: [:show]
  resources :bookings, only: [:index, :new, :create]
end
