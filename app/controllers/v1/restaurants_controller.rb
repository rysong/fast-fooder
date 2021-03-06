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

  def google
    restaurant_id = params["id"]
    restaurant = Restaurant.find_by(id: restaurant_id)
    search = restaurant.name + restaurant.address
    response = Unirest.get("https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{search}&key=#{ENV['MAPS_API_KEY']}")
    google_id = response.body["results"][0]["place_id"] 

    response = Unirest.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=#{google_id}&key=#{ENV['MAPS_API_KEY']}")
    
    render json: {main: response.body["result"]} 

  end 

  def wiki
    restaurant_id = params["id"]
    restaurant = Restaurant.find_by(id: restaurant_id)
    search = restaurant.name
    response = Unirest.get("https://en.wikipedia.org/api/rest_v1/page/summary/#{search}")
    render json: response.body
  end 

  
end
