require "rails_helper"

RSpec.describe MaturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/matures").to route_to("matures#index")
    end

    it "routes to #new" do
      expect(:get => "/matures/new").to route_to("matures#new")
    end

    it "routes to #show" do
      expect(:get => "/matures/1").to route_to("matures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/matures/1/edit").to route_to("matures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/matures").to route_to("matures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/matures/1").to route_to("matures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/matures/1").to route_to("matures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/matures/1").to route_to("matures#destroy", :id => "1")
    end

  end
end
