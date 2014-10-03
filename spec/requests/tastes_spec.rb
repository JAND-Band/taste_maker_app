require 'rails_helper'

RSpec.describe "Tastes", :type => :request do
  describe "GET /tastes" do
    it "works! (now write some real specs)" do
      get tastes_path
      expect(response.status).to be(200)
    end
  end
end
