class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian],
                                                    message: '%{value} is not a valid category' }
end
