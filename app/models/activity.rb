class Activity < ApplicationRecord
  has_many :availabilities
  has_many :reviews
  has_one_attached :photo
end
