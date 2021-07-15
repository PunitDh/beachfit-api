class AddSessionTimesToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :session_times, :string
  end
end
