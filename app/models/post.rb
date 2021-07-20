class Post < ApplicationRecord
	belongs_to :blog
	has_one_attached :image
end
