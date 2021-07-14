class AddPricingIdToPlans < ActiveRecord::Migration[6.1]
  def change
    add_reference :plans, :pricing, null: false, foreign_key: true
  end
end
