require 'rails_helper'

RSpec.describe "UserHabilities", type: :request do
  describe "GET /user_habilities" do
    it "works! (now write some real specs)" do
      get user_habilities_path
      expect(response).to have_http_status(200)
    end
  end
end
