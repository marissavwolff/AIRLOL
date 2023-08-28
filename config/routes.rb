Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   GET "/" to: "listing#index"
# /	GET	listings	index
# /	GET	listings	index
# /listings/:id	GET	listings	show
# /users/new	GET 	users	new
# /users/sign_in	POST	users	create
# /listings/:id	POST 	orders	create
# /users/:id/orders	GET 	orders	index
# /listing/:id/	POST	reviews	create
# /users/:id/listings	POST	listings	create
# /users/:id/listings/listing_id	DELETE	listings	destroy
# DEVISE		users	signout
  # Defines the root path route ("/")
  # root "articles#index"
end
