class V1::MealsController < ApplicationController
  def upvote
    meal_id = params["id"]
    meal = Meal.find_by(id: meal_id)
    meal.upvotes = meal.upvotes + 1
    meal.save  
  end 
end
