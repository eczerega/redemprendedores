require "rails_helper"

RSpec.describe UserHabilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_habilities").to route_to("user_habilities#index")
    end

    it "routes to #new" do
      expect(:get => "/user_habilities/new").to route_to("user_habilities#new")
    end

    it "routes to #show" do
      expect(:get => "/user_habilities/1").to route_to("user_habilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_habilities/1/edit").to route_to("user_habilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_habilities").to route_to("user_habilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_habilities/1").to route_to("user_habilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_habilities/1").to route_to("user_habilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_habilities/1").to route_to("user_habilities#destroy", :id => "1")
    end

  end
end
