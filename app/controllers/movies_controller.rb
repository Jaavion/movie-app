class MoviesController < ApplicationController
  def index
    if current_user
    movie = Movie.where("english = ?", true)
    render json: movie.to_json
    else
      render json: [], status_code: unauthorized
    end
  end
  def show
    movie = Movie.find(params[:id]).actors
    render json: movie.to_json
  end
  def update
    movie = Movie.find(params[:id])
    movie.title = movie[:title] || movie.title
    movie.year = movie[:year] || movie.year
    movie.plot = movie[:plot] || movie.plot
    movie.actors = movie[:actors] || movie.actors
    movie.save
    if movie.save == false
      render json: movie.errors.full_messages.to_json
    else
      render json: {message: movie.save}
    end
  end

  def create

    movie = Movie.create({
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      english: params[:english],
      director: params[:director]

    })
    movie.save
    if movie.save == false
      render json: movie.errors.full_messages.to_json
    else
      render json: {message: movie.save}
    end
  end
  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "This product is deleted the product"}
  end

end
