class Pricing < ApplicationRecord
  belongs_to :user
  has_many :plans
  has_many :passes
end
