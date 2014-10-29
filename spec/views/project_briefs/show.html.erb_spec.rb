require 'rails_helper'

RSpec.describe "project_briefs/show", :type => :view do
  before(:each) do
    @project_brief = assign(:project_brief, ProjectBrief.create!(
      :user => nil,
      :department => "Department",
      :cost_center => "Cost Center",
      :budget_in_cents => 1,
      :participating_stores => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/Cost Center/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
