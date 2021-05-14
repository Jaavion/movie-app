class ActorsController < ApplicationController
  def index
    actor = Actor.all
    render json: actor.to_json
  end
  def show
    actor = Actor.find(params[:id])
    render json: actor.to_json
  end
  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: 'You have deleted your data'}
  end
  def update
    actor = Actor.find(params[:id])
    actor.first_name = actor[:first_name] || actor.first_name
    actor.last_name = actor[:last_name] || actor.last_name
    actor.known_for = actor[:known_for] || actor.known_for
    actor.save
    if actor.save == false
      render json: actor.errors.full_messages.to_json
    else
      render json: {message: actor.save}
    end

  end
  def create 
    actor = Actor.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age]
    })
    actor.save
    if actor.save == false
      render json: actor.errors.full_messages.to_json
    else
      render json: {message: actor.save}
    end
  end
end
