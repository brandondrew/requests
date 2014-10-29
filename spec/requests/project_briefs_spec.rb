require 'rails_helper'

RSpec.describe "ProjectBriefs", :type => :request do
  describe "GET /project_briefs" do
    it "works! (now write some real specs)" do
      get project_briefs_path
      expect(response).to have_http_status(200)
    end
  end
end
