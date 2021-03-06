class V1::UserMealsController < ApplicationController
  def create
    user_meal = UserMeal.new(
      text: params[:text], 
      user_id: current_user.id, 
      meal_id: params[:meal_id]
      )

    if user_meal.save 
      render json: user_meal.as_json
    else
      render json: {errors: user_meal.errors.full_messages}, status: :bad_request
    end
  end 
end
