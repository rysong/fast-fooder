class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :user_meals 

  def as_json
    {
      id: id,
      description: description,
      upvotes: upvotes,
      user_meals: user_meals.as_json
    }
  end   
end
