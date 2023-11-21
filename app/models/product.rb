class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  CATEGORIES = ['Apparel', 'Accessories', 'Equipment', 'Shoes', 'Adult', "Kids"]
  BRANDS = ['Nike', 'Adidas', 'Reebok', 'Under Armor', 'Puma', 'Asics', 'New Balance', 'Speedo', 'Mizuno']
  CONDITION = ['New', 'Used', 'Refurbished']
  SPORTS = ['Soccer', 'Footbal', 'Tennis', 'Volleyball', 'Skateboarding', 'Hockey', 'Snowboarding', 'Ski', 'Rollerblading', 'Basketball', 'Golf', 'Hugby']

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :brand, presence: true, inclusion: { in: BRANDS }
  validates :condition, presence: true, inclusion: { in: CONDITION }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true,  length: { maximum: 150 }
  validates :sport, presence: true, inclusion: { in: SPORTS }
end
