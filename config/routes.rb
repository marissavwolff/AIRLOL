Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  resources :listings, only: [:index, :new, :show, :create]


  # Defines the root path route ("/")
  # root "articles#index"
end
