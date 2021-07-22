class AddImageUrlToTestimonials < ActiveRecord::Migration[6.1]
  def change
    add_column :testimonials, :image_url, :string
  end
end
