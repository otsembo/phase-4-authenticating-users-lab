Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # session
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  # users
  get '/me', to: "users#show"
end
