class MoviesController < ApplicationController
  load_and_authorize_resource
  def index
    @movies = Movie.all
    render json: @movies
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie
  end

  def create
    @movie = Movie.create(product_params)
    render json: @movie
  end

  def update
  end

  def destroy
    Movie.delete(params[:id])
  end

  private

  def product_params
    params.expect(movie: [ :name, :id ])
  end
end
