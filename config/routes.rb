Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # -------Movies
  root to: 'lists#index'
  resources :movies
  resources :lists, except: :index do
    resources :bookmarks, only: [:create, :new]
  end

  resources :bookmarks, only: [:destroy]
    # Create Movies
    # Read Movies

    # Update Movies
    # Delete Movies

    # --------List
end
