# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  name: "Richard Song",
  email: "richard@email.com",
  password: "password",
  admin: true
  )
user.save 

user = User.new(
  name: "Peter Jang",
  email: "peter@email.com",
  password: "password",
  admin: false 
  )
user.save 

user = User.new(
  name: "Kevin Mitchell",
  email: "kevin@email.com",
  password: "password",
  admin: false 
  )
user.save 

restaurant = Restaurant.new(
  name: "McDonald's", 
  address: "600 N Clark St, Chicago, IL 60610" 
  )
restaurant.save 

restaurant = Restaurant.new(
  name: "Portillo's Hot Dogs", 
  address: "100 W Ontario St, Chicago, IL 60610" 
  )
restaurant.save 

restaurant = Restaurant.new(
  name: "Potbelly Sandwich Shop", 
  address: "508 N Clark St, Chicago, IL 60654" 
  )
restaurant.save 

review = Review.new(
  value: 5, 
  text: "Really cool Mcdonalds! It's rock n roll themed!", 
  user_id: 1, 
  restaurant_id: 1, 
  )
review.save 

review = Review.new(
  value: 4, 
  text: "Good food. I like the Italian Beef.", 
  user_id: 1, 
  restaurant_id: 2, 
  )
review.save 

review = Review.new(
  value: 3, 
  text: "Decent sandwiches.", 
  user_id: 2, 
  restaurant_id: 3, 
  )
review.save 

image = Image.new(
  name: "Mcdonalds fries", 
  url: "https://cdn.modernfarmer.com/wp-content/uploads/2014/11/fries.jpeg", 
  user_id: 1,  
  review_id: 1
  )
image.save

image = Image.new(
  name: "Italian Beef", 
  url: "https://media-cdn.tripadvisor.com/media/photo-s/0e/5d/a0/07/portillos-italian-beef.jpg", 
  user_id: 1,  
  review_id: 2
  )
image.save 


