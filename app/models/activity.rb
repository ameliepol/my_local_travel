class Activity < ApplicationRecord
  belongs_to :availability
  has_many :reviews
end
