Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :listings, only: [:index, :new, :show, :create]
  resources :bookings, only: [:index]

  # Defines the root path route ("/")
  # root "articles#index"
end
