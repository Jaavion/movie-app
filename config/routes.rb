Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actor/q", controller: "movies", action: "q_actor"
  get "/actor/:id/", controller: "movies", action: "url_actor"
  post "/actor/movies", controller: "movies", action: "body_actor"
end
