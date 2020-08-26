class Trip < ApplicationRecord
  belongs_to :user
  has_many :days

  validates :address, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
