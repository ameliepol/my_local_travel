class Review < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :content, presence: true
  validates :content, length: { minimum: 10}
  validates :content, length: { maximum: 200}
end
