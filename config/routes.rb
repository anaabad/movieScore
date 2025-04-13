Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/movies", to: "movies#index"
  get "/movies/:id", to: "movies#show"
  post "/movies", to: "movies#create"
  delete "/movies/:id", to: "movies#destroy"

  get "/actors", to: "actors#index"
  get "/actors/:id", to: "actors#show"
  post "/actors", to: "actors#create"
  delete "/actors/:id", to: "actors#destroy"

  get "/directors", to: "directors#index"
  get "/directors/:id", to: "directors#show"
  post "/directors", to: "movies#create"
  delete "/directors/:id", to: "directors#destroy"
  # Defines the root path route ("/")
  # root "posts#index"
end
