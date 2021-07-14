class AddFaqIdToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :faq, null: false, foreign_key: true
  end
end
