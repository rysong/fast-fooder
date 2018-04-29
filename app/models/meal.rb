class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :user_meals 
end
