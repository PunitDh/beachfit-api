class AddSessionsPerWeekToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :sessions_per_week, :string
  end
end
