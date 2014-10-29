json.array!(@project_briefs) do |project_brief|
  json.extract! project_brief, :id, :user_id, :department, :cost_center, :budget_in_cents, :target_date, :participating_stores
  json.url project_brief_url(project_brief, format: :json)
end
