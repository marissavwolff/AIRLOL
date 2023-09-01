Rails.application.routes.draw do
  devise_for :users

  root to: "listings#index"



  resources :listings, only: [:new, :create, :destroy, :index, :show, :edit, :update] do
    resources :bookings, only: [:new, :create]

  end

  resources :bookings, only: [:index, :destroy] do
    resources :reviews, only: [:new, :create]
  end

  get "mylistings", to: "dashboards#mylistings", as: :mylistings
  get "mybookings", to: "dashboards#mybookings", as: :mybookings
  delete "mylistings", to: "mylistings#destroy"
  get "booked_listings", to: "dashboards#booked_listings", as: :booked_listings
  get "approve_booking/:id", to: "bookings#approve_booking", as: :approve_booking

  # Defines the root path route ("/")
  # root "articles#index"
end
