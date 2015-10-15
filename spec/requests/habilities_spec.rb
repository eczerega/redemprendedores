require 'rails_helper'

RSpec.describe "Habilities", type: :request do
  describe "GET /habilities" do
    it "works! (now write some real specs)" do
      get habilities_path
      expect(response).to have_http_status(200)
    end
  end
end
