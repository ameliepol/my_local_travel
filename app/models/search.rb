class Search
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :mood, :budget, :days, :address, :start_date

  validates :mood, presence: true, inclusion: { in: ["Aventurier"] }
  validates :budget, presence: true, inclusion: { in: ["$"] }
  validates :days, presence: true, inclusion: { in: (1..3) }
  validates :address, presence: true
  validates :start_date, presence: true
  # validates :radius, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end
