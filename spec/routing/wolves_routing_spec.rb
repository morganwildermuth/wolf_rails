require "spec_helper"

describe WolvesController do
  describe "routing" do

    it "routes to #index" do
      get("/wolves").should route_to("wolves#index")
    end

    it "routes to #new" do
      get("/wolves/new").should route_to("wolves#new")
    end

    it "routes to #show" do
      get("/wolves/1").should route_to("wolves#show", :id => "1")
    end

    it "routes to #edit" do
      get("/wolves/1/edit").should route_to("wolves#edit", :id => "1")
    end

    it "routes to #create" do
      post("/wolves").should route_to("wolves#create")
    end

    it "routes to #update" do
      put("/wolves/1").should route_to("wolves#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/wolves/1").should route_to("wolves#destroy", :id => "1")
    end

  end
end
