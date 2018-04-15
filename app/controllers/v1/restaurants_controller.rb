class V1::RestaurantsController < ApplicationController
  def index 
    restaurants = Restaurant.all
    render json: restaurants.as_json
  end 

  def show
    restaurant_id = params["id"]
    restaurant = Restaurant.find_by(id: restaurant_id)
    render json: restaurant.as_json 
  end 
  
end
