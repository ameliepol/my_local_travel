class Activity < ApplicationRecord
  has_many :availabilities
  has_many :reviews
  has_many_attached :photos
  has_many :selected_activities

  enum mood: { "Aventurier" => 1, "Détente" => 2, "Famille" => 3, "Epicurien" => 4 }
  enum category: { "Hébergement" => 1, "Restauration" => 2, "Diurne" => 3, "Nocturne" => 4 }
  enum budget: { "$" => 1, "$$" => 2, "$$$" => 3 }
  # enum radius: { "10km" => 1, "25km" => 2, "50km" => 3 }

  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end

