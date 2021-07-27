class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.boolean :blog_show
      t.boolean :faq_show
      t.boolean :testimonial_show
      t.text :about_text
      t.string :phone_number
      t.string :email_address

      t.timestamps
    end
  end
end
