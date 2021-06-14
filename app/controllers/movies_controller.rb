class MoviesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]
  def index
    # if current_user
      movie = Movie.where("english = ?", true)
      render json: movie.to_json
    # else
    #   render json: [], status_code: unauthorized
      # end
  end
  def show
    movie = Movie.find(params[:id])
    render json: movie.to_json
  end
  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.actors = params[:actors] || movie.actors
    movie.director = params[:director] || movie.director
    movie.image_url = params[:image_url] || movie.image_url
    if movie.save 
      render json: movie
    else 
      render json: movie.errors.full_messages.to_json
    end
  end

  def create

    movie = Movie.create({
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      english: params[:english],
      director: params[:director],
      image_url: params[:image_url]

    })
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 422
    end
  end
  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "This product is deleted the product"}
  end

end
