class Day < ApplicationRecord
  belongs_to :trip
  has_many :selected_activities
end
