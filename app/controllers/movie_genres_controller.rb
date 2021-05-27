class MovieGenresController < ApplicationController
  def create
    MovieGenre.new(
      movie_id = params[:movie_id],
      genre_id = params[:genre_id]
    )
    render json: {message: 'created!'}
  end
end
