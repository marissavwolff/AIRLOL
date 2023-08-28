Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :listings, only: [:new, :show, :create]


  # Defines the root path route ("/")
  # root "articles#index"
end
