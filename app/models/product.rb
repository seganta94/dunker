class Product < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: ['Apparel', 'Accessories', 'Equipment', 'Shoes', 'Adult', "Kids"] }
  validates :brand, presence: true, inclusion: { in: ['Nike', 'Adidas', 'Reebok', 'Under Armor', 'Puma', 'Asics', 'New Balance', 'Speedo', 'Mizuno'] }
  validates :condition, presence: true, inclusion: { in: ['New', 'Used', 'Refurbished'] }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true,  length: { maximum: 150 }
end
