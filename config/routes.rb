Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "all_movies", controller: "movies", action: "all_movies"
end
