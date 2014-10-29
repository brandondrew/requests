require 'rails_helper'

RSpec.describe "project_briefs/index", :type => :view do
  before(:each) do
    assign(:project_briefs, [
      ProjectBrief.create!(
        :user => nil,
        :department => "Department",
        :cost_center => "Cost Center",
        :budget_in_cents => 1,
        :participating_stores => ""
      ),
      ProjectBrief.create!(
        :user => nil,
        :department => "Department",
        :cost_center => "Cost Center",
        :budget_in_cents => 1,
        :participating_stores => ""
      )
    ])
  end

  it "renders a list of project_briefs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Cost Center".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
