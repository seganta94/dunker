class Sale < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :review, presence: true, length: { maximum: 150 }, on: :update
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, on: :update
end
