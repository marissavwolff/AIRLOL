Rails.application.routes.draw do
  devise_for :users

  root to: "listings#index"
  resources :listings, only: [:new, :create, :destroy, :index, :show] do
    resources :reviews, only: [:new, :create]

    resources :bookings, only: [:new, :create]

    resources :bookings, only: [:create]

  end
  resources :bookings, only: [:index]

  get "mylistings", to: "dashboards#mylistings", as: :mylistings
  get "mybookings", to: "dashboards#mybookings", as: :mybookings
  delete "mylistings", to: "mylistings#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end
