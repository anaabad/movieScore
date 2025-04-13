require "rails_helper"

RSpec.describe MoviesController, type: :controller do
  describe "GET index" do
    it "returns a 200" do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end

  describe "GET show" do
    it "returns a 200" do
      director = Director.create(name: "Peter Jackson")
      movie = Movie.create(name: 'The Hobbit', releaseDate: Date.new(2012, 12, 12), director: director)
      get :show,  params: { id: movie.id }
      expect(response).to have_http_status(:ok)
    end
  end

  # describe "POST update" do
  #   it "returns a 200" do
  #     get :index
  #     expect(response).to have_http_status(:ok)
  #   end
  # end

  describe "DELETE" do
    it "returns a 200" do
      director = Director.new(name: "Robert Zemeckis")
      movie = Movie.create(name: "Back to the Future", releaseDate: Date.new(1985, 07, 3), director: director)
      delete :destroy, params: { id: movie.id }
      expect(response).to have_http_status(:no_content)
    end
  end

  after(:all) do
    DatabaseCleaner.clean_with(:truncation)
  end
end
