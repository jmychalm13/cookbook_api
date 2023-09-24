Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  resources :recipes

  resources :ingredients

  resources :directions
end
