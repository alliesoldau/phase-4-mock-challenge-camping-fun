require 'rails_helper'

RSpec.describe "Campers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/camper/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/camper/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/camper/create"
      expect(response).to have_http_status(:success)
    end
  end

end
