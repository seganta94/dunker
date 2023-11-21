class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :products, dependent: :destroy
  has_many :sales, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, precense: true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\.[a-zA-Z]+\z/, message: "Invalid email format" }
  validates :encrypted_password, precense: true, length: { minimum: 6 }
  validates :first_name, precense: true
  validates :last_name, precense: true
end
