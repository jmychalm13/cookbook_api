Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/recipes" => "recipes#index"

  post "/recipes" => "recipes#create"

  get "/recipes/:id" => "recipes#show"

  patch "/recipes/:id" => "recipes#update"

  delete "/recipes/:id" => "recipes#destroy"

  get "/ingredients" => "ingredients#index"

  get "/ingredients/:id" => "ingredients#show"

  post "/ingredients" => "ingredients#create"

  patch "/ingredients/:id" => "ingredients#update"

  delete "/ingredients/:id" => "ingredients#destroy"

  get "/directions" => "directions#index"

  post "/directions" => "directions#create"

  get "/directions/:id" => "directions#show"

  patch "/directions/:id" => "directions#update"

  delete "/directions/:id" => "directions#destroy"
end
