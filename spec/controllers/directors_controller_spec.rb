require "rails_helper"

RSpec.describe DirectorsController, type: :controller do
  describe "GET index" do
    it "returns a 200" do
      get :index
      expect(response).to have_http_status(:ok)
    end
  end
end
