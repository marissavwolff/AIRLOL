Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :listings, only: [:new, :create, :destroy]

  resources :listings, only: [:index, :show]

  get "profile", to: "dashboards#profile", as: :profile
  # Defines the root path route ("/")
  # root "articles#index"
end
