class Search < ApplicationRecord
  validates :mood, presence: true
  validates :budget, presence: true
  validates :days_number, presence: true, inclusion: { in: (1..3) }
  validates :address, presence: true
  validates :start_date, presence: true
  validates :radius, presence: true

  def self.addresses
    results = RestClient.get("https://geo.api.gouv.fr/departements/33/communes")
    return JSON.parse(results.body).map{ |address| [address["nom"], address["nom"]]  }
  end
end
