class Activity < ApplicationRecord
  has_many :availabilities
  has_many :reviews
  has_one_attached :photo

  enum mood: { "Aventurier" => 1, "Détente" => 2, "Famille" => 3, "Epicurien" => 4 }
  enum category: { "Hébergement" => 1, "Restauration" => 2, "Diurne" => 3, "Nocturne" => 4 }
  enum budget: { "$" => 1, "$$" => 2, "$$$" => 3 }

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
