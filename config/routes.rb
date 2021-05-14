Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actors/", controller: "actors", action: "index"
  get "/movies/", controller: "movies", action: "index"
  get "/actors/:id", controller: "actors", action:"show"
  get "/movies/:id", controller: "movies", action:"show"
  patch "/actors/:id", controller: "actors", action: "update"
  patch "/movies/:id", controller: "movies", action: "update"
  delete "/actors/:id", controller: "actors", action: "destroy"
  delete "/movies/:id", controller: "movies", action: "destroy"
  post "/actors/", controller: "actors", action: "create"
  post "/movies/", controller: "movies", action: "create"

end