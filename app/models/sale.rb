class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :review, presence: true, length: { maximum: 150 }
  validates :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
