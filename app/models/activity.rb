class Activity < ApplicationRecord
  has_many :availabilities
  has_many :reviews
end
