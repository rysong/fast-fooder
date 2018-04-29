class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :reviews
  has_many :images
  has_many :user_meals
  has_many :meals, through: :user_meals
end
