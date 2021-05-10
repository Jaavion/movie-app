class MoviesController < ApplicationController
  def q_actor
    actor_value = params[:id].to_i
    actor = Actor.find_by(id: actor_value)
    render  json: actor.to_json
  end
  def url_actor
    actor_value = params[:id].to_i
    actor = Actor.find_by(id: actor_value)
    render  json: actor.to_json
  end
  def body_actor
    actor_value = params[:id].to_i
    actor = Actor.find_by(id: actor_value)
    render  json: actor.to_json
  end
end
