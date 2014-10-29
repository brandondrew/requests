require "rails_helper"

RSpec.describe ProjectBriefsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/project_briefs").to route_to("project_briefs#index")
    end

    it "routes to #new" do
      expect(:get => "/project_briefs/new").to route_to("project_briefs#new")
    end

    it "routes to #show" do
      expect(:get => "/project_briefs/1").to route_to("project_briefs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/project_briefs/1/edit").to route_to("project_briefs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/project_briefs").to route_to("project_briefs#create")
    end

    it "routes to #update" do
      expect(:put => "/project_briefs/1").to route_to("project_briefs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/project_briefs/1").to route_to("project_briefs#destroy", :id => "1")
    end

  end
end
