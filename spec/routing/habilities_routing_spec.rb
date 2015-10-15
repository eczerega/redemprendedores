require "rails_helper"

RSpec.describe HabilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/habilities").to route_to("habilities#index")
    end

    it "routes to #new" do
      expect(:get => "/habilities/new").to route_to("habilities#new")
    end

    it "routes to #show" do
      expect(:get => "/habilities/1").to route_to("habilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/habilities/1/edit").to route_to("habilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/habilities").to route_to("habilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/habilities/1").to route_to("habilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/habilities/1").to route_to("habilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/habilities/1").to route_to("habilities#destroy", :id => "1")
    end

  end
end
