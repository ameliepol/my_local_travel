class Search < ApplicationRecord
  validates :mood, presence: true
  validates :budget, presence: true
  validates :days_number, presence: true
  validates :address, presence: true
  validates :start_date, presence: true
  validates :radius, presence: true

  enum mood: { "Aventurier" => 1, "Détente" => 2, "Famille" => 3, "Epicurien" => 4 }
  enum budget: { "€" => 1, "€€" => 2, "€€€" => 3 }

  def self.addresses
    results = RestClient.get("https://geo.api.gouv.fr/departements/33/communes")
    return JSON.parse(results.body).map{ |address| [address["nom"], address["nom"]]  }
  end
end
