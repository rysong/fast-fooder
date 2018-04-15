class V1::ReviewsController < ApplicationController
  
  def index 
    reviews = Review.all
    render json: reviews.as_json
  end 

  def create
    review = Review.new(
      value: params[:value],
      text: params[:text], 
      user_id: params[:user_id],
      restaurant_id: params[:restaurant_id]
      )

    if review.save 
      render json: {message: "Review successfully created!"}, status: :created 
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end 
end
