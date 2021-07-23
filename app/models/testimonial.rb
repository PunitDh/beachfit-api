class Testimonial < ApplicationRecord
    has_one_attached :image
    after_create :attach_image

    private
        def attach_image
            unless image.url.nil?
                @image_url = image.url
            end
        end
end