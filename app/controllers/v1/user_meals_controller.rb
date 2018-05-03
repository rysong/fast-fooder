class V1::UserMealsController < ApplicationController
  def create
    user_meal = UserMeal.new(
      ranking: params[:raking],
      text: params[:text], 
      user_id: current_user.id, 
      meal_id: params[:meal_id]
      )

    if review.save 
      render json: {message: "Review successfully created!"}, status: :created 
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end 
end
