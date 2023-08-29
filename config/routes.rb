Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users

  root to: "listings#index"
  resources :listings, only: [:new, :create, :destroy, :index, :show] do
    resources :reviews, only: [:new, :create]
  end
  resources :bookings, only: [:index]
  
  # Defines the root path route ("/")
  # root "articles#index"
end
