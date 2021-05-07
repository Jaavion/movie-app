class MoviesController < ApplicationController
  def all_movies
    movies = Movie.all 
    render json: movies.to_json
  end
  def first_movies 
    movies = Movie.first
    render json: movies.to_json
  end
end
