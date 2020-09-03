class Trip < ApplicationRecord
  belongs_to :user
  has_many :days

  validates :address, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :mood, presence: true
  validates :budget, presence: true

  enum mood: { "Aventurier" => 1, "Détente" => 2, "Famille" => 3, "Epicurien" => 4 }
  enum budget: { "€" => 1, "€€" => 2, "€€€" => 3 }
  enum radius: { "10km" => 10, "25km" => 25, "50km" => 50 }

  def self.random_image
    ["https://res.cloudinary.com/dwekobmrk/image/upload/v1599134155/cylubi2ehnttzb5dal3lc4i93asv.jpg"].sample
  end
end

