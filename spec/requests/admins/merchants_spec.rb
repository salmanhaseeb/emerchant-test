require 'rails_helper'

RSpec.describe "Admins::Merchants", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admins/merchants/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/admins/merchants/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/admins/merchants/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/admins/merchants/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/admins/merchants/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
