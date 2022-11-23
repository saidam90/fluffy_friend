Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # resources :pets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show]
  resources :pets do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]
end
