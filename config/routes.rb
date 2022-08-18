Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # -------Movies

  resources :movies
  resources :lists
    # Create Movies
    # Read Movies
    # Update Movies
    # Delete Movies

    # --------List
end
