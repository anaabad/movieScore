class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render json: @actors
  end

  def show
    @actor = Actor.find(params[:id])
    render json: @actor
  end

  def create
    @actor = Actor.create(actor_params)
    render json: @actor
  end

  def update
    @actor = Actor.update(params[:id], params)
    render json: @actor
  end

  def destroy
    Actor.destroy(params[:id])
  end


  def actor_params
    params.expect([ :id, :name ])
  end
end
