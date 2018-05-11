class Meal < ApplicationRecord
  belongs_to :restaurant
  has_many :user_meals


  def as_json
    {
      id: id,
      description: description,
      upvotes: upvotes,
      image: image, 
      user_meals: user_meals.as_json,
      new_user_meal_text: ""
    }
  end   
end
