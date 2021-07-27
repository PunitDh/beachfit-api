class Post < ApplicationRecord
	belongs_to :blog
	has_one_attached :image
	after_create :attach_image

    # accesses image to be displayed
    private
        def attach_image
            unless image.url.nil?
                @image_url = image.url
            end
        end
end
