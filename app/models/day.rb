class Day < ApplicationRecord
  belongs_to :trip
  has_many :selected_activities

  def to_s
    "jour #{self.position}"
  end
end
