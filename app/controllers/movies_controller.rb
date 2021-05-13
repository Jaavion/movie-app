class MoviesController < ApplicationController
  def index
    movie = Movie.all
    render json: movie.to_json
  end
  def show
    movie = Movie.find(params[:id])
    render json: movie.to_json
  end
  def update
    movie = Movie.find(params[:id])
    movie.title = movie[:title] || movie.title
    movie.year = movie[:year] || movie.year
    movie.plot = movie[:plot] || movie.plot

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
    render json: {message: "your information has been updated"}
  end
  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "This product is deleted the product"}
  end

end
