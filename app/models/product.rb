
class Product < ApplicationRecord
  belongs_to :user
  has_one :sale, dependent: :destroy
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true }
    }

  CATEGORIES = ['Apparel', 'Accessories', 'Equipment', 'Shoes', 'Adult', "Kids"]
  BRANDS = ['Nike', 'Adidas', 'Reebok', 'Under Armor', 'Puma', 'Asics', 'New Balance', 'Speedo', 'Mizuno']
  CONDITION = ['New', 'Used', 'Refurbished']
  SPORTS = ['Soccer', 'Tennis', 'Hockey', 'Snowboarding', 'Basketball', 'Golf', 'Rugby']

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :brand, presence: true, inclusion: { in: BRANDS }
  validates :condition, presence: true, inclusion: { in: CONDITION }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { maximum: 150 }
  validates :sport, presence: true, inclusion: { in: SPORTS }
end
