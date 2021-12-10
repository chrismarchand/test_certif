Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :movies, only: [:create, :index, :destroy]

  # Rails.application.routes.draw do
  #   get "movies", to: "movies#index"
  #   get "movies/:id", to: "movies#show", as: :movie
  #   get "movies/new", to: "movies#new"
  #   post "movies", to: "movies#create"
  #   get "movies/:id/edit", to: "movies#edit"
  #   delete "movies/:id", to: "movies#destroy"
  # end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
