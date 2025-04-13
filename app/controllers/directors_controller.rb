class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render json: @directors
  end

  def show
    @director = Director.find(params[:id])
  end

  def create
    @director = Director.create(params_director)
  end

  def update
    @director = Director.find(params[:id]).update(params_director)
  end

  def destroy
    Director.destroy(params[:id])
  end

  private
  def params_director
    params.expect!(director: [ :id, :name ])
  end
end
