class SelectedActivity < ApplicationRecord
  belongs_to :day
  has_many :activities
end
