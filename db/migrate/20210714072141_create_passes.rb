class CreatePasses < ActiveRecord::Migration[6.1]
  def change
    create_table :passes do |t|
      t.string :name
      t.string :total_cost
      t.string :class_cost

      t.timestamps
    end
  end
end
