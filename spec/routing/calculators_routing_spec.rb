require "rails_helper"

RSpec.describe CalculatorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/calculators").to route_to("calculators#index")
    end

    it "routes to #new" do
      expect(get: "/calculators/new").to route_to("calculators#new")
    end

    it "routes to #show" do
      expect(get: "/calculators/1").to route_to("calculators#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/calculators/1/edit").to route_to("calculators#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/calculators").to route_to("calculators#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/calculators/1").to route_to("calculators#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/calculators/1").to route_to("calculators#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/calculators/1").to route_to("calculators#destroy", id: "1")
    end
  end
end
