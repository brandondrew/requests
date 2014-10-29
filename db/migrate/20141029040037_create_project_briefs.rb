class CreateProjectBriefs < ActiveRecord::Migration
  def change
    create_table :project_briefs do |t|
      t.references :user, index: true
      t.string :department
      t.string :cost_center
      t.integer :budget_in_cents
      t.date :target_date
      t.json :participating_stores

      t.timestamps
    end
  end
end
