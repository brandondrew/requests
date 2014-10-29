require 'rails_helper'

RSpec.describe "project_briefs/edit", :type => :view do
  before(:each) do
    @project_brief = assign(:project_brief, ProjectBrief.create!(
      :user => nil,
      :department => "MyString",
      :cost_center => "MyString",
      :budget_in_cents => 1,
      :participating_stores => ""
    ))
  end

  it "renders the edit project_brief form" do
    render

    assert_select "form[action=?][method=?]", project_brief_path(@project_brief), "post" do

      assert_select "input#project_brief_user_id[name=?]", "project_brief[user_id]"

      assert_select "input#project_brief_department[name=?]", "project_brief[department]"

      assert_select "input#project_brief_cost_center[name=?]", "project_brief[cost_center]"

      assert_select "input#project_brief_budget_in_cents[name=?]", "project_brief[budget_in_cents]"

      assert_select "input#project_brief_participating_stores[name=?]", "project_brief[participating_stores]"
    end
  end
end
