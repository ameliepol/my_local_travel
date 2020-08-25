class Activity < ApplicationRecord
  belongs_to :availability
  has_many :reviews
  has_one_attached :photo
end
