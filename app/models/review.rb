class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: 0..5 }
  validates :restaurant_id, presence: true
end
