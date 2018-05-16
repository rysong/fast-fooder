# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#users 
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
#------------------------------------------
#restaurant 1 
restaurant = Restaurant.new(
  name: "McDonald's", 
  address: "600 N Clark St, Chicago, IL 60610",
  logo:"https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/220px-McDonald%27s_Golden_Arches.svg.png",
  primary_image: "http://1.bp.blogspot.com/-Czb1a7IXqSQ/TmM5jaU1MnI/AAAAAAAAABY/Lo_M052DuJg/s1600/1814445091_7ccaa7d40c.jpg", 
  speed_of_service: 5
  )
restaurant.save 

#restaurant 2
restaurant = Restaurant.new(
  name: "Portillo's Hot Dogs", 
  address: "100 W Ontario St, Chicago, IL 60610",
  logo:"https://upload.wikimedia.org/wikipedia/commons/9/94/Portillos.png",
  primary_image: "https://igx.4sqi.net/img/general/960x720/2815423_b9IGQ7PPmxhsLyYklq-MnEJQJlTkZ-IlIxPTRcz6sr4.jpg", 
  speed_of_service: 10
  )
restaurant.save 

#restaurant 3
restaurant = Restaurant.new(
  name: "Potbelly Sandwich Shop", 
  address: "508 N Clark St, Chicago, IL 60654",
  logo:"https://upload.wikimedia.org/wikipedia/commons/f/ff/PotbellyLogo.jpg",
  primary_image: "https://b.zmtcdn.com/data/pictures/3/16737473/63a5ed628d653908d77a59031592fc04.jpg", 
  speed_of_service: 5
  )
restaurant.save 

#restaurant 4
restaurant = Restaurant.new(
  name: "Chick-fil-A", 
  address: "177 N State St, Chicago, IL, 60601",
  logo:"https://upload.wikimedia.org/wikipedia/en/0/02/Chick-fil-A_Logo.svg",
  primary_image: "http://loopchicago.com/_files/images/chik_fil_a.jpg", 
  speed_of_service: 7
  )
restaurant.save 
#----------------------------------------
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
#---------------------------------------------------------------
image = Image.new(
  name: "Mcdonalds fries", 
  url: "https://cdn.modernfarmer.com/wp-content/uploads/2014/11/fries.jpeg", 
  restaurant_id: 1
  )
image.save

image = Image.new(
  name: "Mcdonalds 3", 
  url: "https://s3-media2.fl.yelpcdn.com/bphoto/VnsZ5nN00yzXeVYs4auNGg/o.jpg", 
  restaurant_id: 1
  )
image.save

image = Image.new(
  name: "Mcdonalds 4", 
  url: "https://s3-media1.fl.yelpcdn.com/bphoto/Cw6yqMlIythc5wn7DWE2eQ/o.jpg", 
  restaurant_id: 1
  )
image.save

image = Image.new(
  name: "Portillos 2", 
  url: "https://s3-media4.fl.yelpcdn.com/bphoto/PAv36cWp9kX9ISUSot-fjA/o.jpg", 
  restaurant_id: 2
  )
image.save

image = Image.new(
  name: "Portillos 3", 
  url: "https://s3-media4.fl.yelpcdn.com/bphoto/FUK5HMyGOzXVb9SbvO9Oeg/o.jpg", 
  restaurant_id: 2
  )
image.save

image = Image.new(
  name: "Portillos 4", 
  url: "https://s3-media1.fl.yelpcdn.com/bphoto/klnqp9W_DtdmHib2qiIY3w/o.jpg", 
  restaurant_id: 2
  )
image.save

image = Image.new(
  name: "Potbelly's 2", 
  url: "https://s3-media1.fl.yelpcdn.com/bphoto/sfnGJZr_N1kxVfywSkX_bQ/o.jpg", 
  restaurant_id: 3
  )
image.save

image = Image.new(
  name: "Potbelly's 3", 
  url: "https://s3-media1.fl.yelpcdn.com/bphoto/Nw7n-UZlnoa4cgo1yvVcjQ/o.jpg", 
  restaurant_id: 3
  )
image.save

image = Image.new(
  name: "Potbelly's 4", 
  url: "https://s3-media4.fl.yelpcdn.com/bphoto/cvOBPkCORDp5DGIczSzXaw/o.jpg", 
  restaurant_id: 3
  )
image.save

image = Image.new(
  name: "Chick-fil-A 2", 
  url: "https://s3-media2.fl.yelpcdn.com/bphoto/eyHMChipsxD9mM8JD7J31g/o.jpg", 
  restaurant_id: 4
  )
image.save

image = Image.new(
  name: "Chick-fil-A 3", 
  url: "https://s3-media2.fl.yelpcdn.com/bphoto/_1jgszDpCt_a1EAjgJx-gw/o.jpg", 
  restaurant_id: 4
  )
image.save

image = Image.new(
  name: "Chick-fil-A 4", 
  url: "https://s3-media1.fl.yelpcdn.com/bphoto/qJJde-TyvOsSYv9SkVZyFQ/o.jpg", 
  restaurant_id: 4
  )
image.save


#------------------------------------------------------------
meal = Meal.new(
  description: "Big Mac, Fries, Soft Drink",
  restaurant_id: 1,
  upvotes: 0,
  image: "https://www.mcdonalds.com/content/dam/usa/nutrition/items/evm/h-mcdonalds-Big-Mac-Extra-Value-Meals.png"
  )
meal.save

meal = Meal.new(
  description: "Quarter Pounder, Fries, Soft Drink",
  restaurant_id: 1,
  upvotes: 0,
  image: "https://www.mcdonalds.com/content/dam/usa/nutrition/items/evm/h-mcdonalds-Double-Quarter-Pounder-with-Cheese-Extra-Value-Meals.png"
  )
meal.save

meal = Meal.new(
  description: "Bacon, Egg & Cheese McGriddles, Hash Brown, Coffee",
  restaurant_id: 1,
  upvotes: 0,
  image: "https://www.mcdonalds.com/content/dam/usa/nutrition/items/evm/h-mcdonalds-Bacon-Egg-Cheese-McGriddles-Extra-Value-Meals.png"
  )
meal.save

meal = Meal.new(
  description: "Italian Beef, Fries, Soft Drink",
  restaurant_id: 2,
  upvotes: 0,
  image: "https://s3-media3.fl.yelpcdn.com/bphoto/B4lsniptyKhRMe-uPuNStg/o.jpg"
  )
meal.save

meal = Meal.new(
  description: "Hot Dog, Fries, Soft Drink",
  restaurant_id: 2,
  upvotes: 0,
  image: "https://tribwxin.files.wordpress.com/2017/09/21273087_10154906282528030_5477633945999188434_o.jpg?quality=85&strip=all&w=400&h=225&crop=1"
  )
meal.save

meal = Meal.new(
  description: "Slab of Ribs, Baked Potato, Cole Slaw",
  restaurant_id: 2,
  upvotes: 0,
  image: "https://www.portillos.com/assets/1/32/DimMenuItemLarge/ribs.full_slab.potato_cole_slaw.background-min1.png"
  )
meal.save

meal = Meal.new(
  description: "A Wreck, Chips, Soft Drink",
  restaurant_id: 3,
  upvotes: 0,
  image: "https://s3.amazonaws.com/levelup-order-ahead-menus-production/4ae60b6cd992adbd85dc4076cef2cb8fdfb55cae.jpg?1500653826"
  )
meal.save

meal = Meal.new(
  description: "Turkey Breast Sandwich, Chips, Soft Drink",
  restaurant_id: 3,
  upvotes: 0,
  image: "https://s3.amazonaws.com/levelup-order-ahead-menus-production/0a204ee103e6a00584b157d313af48f82d4140e7.jpg"
  )
meal.save

meal = Meal.new(
  description: "Grilled Chicken & Cheddar Sandwich, Chips, Soft Drink",
  restaurant_id: 3,
  upvotes: 0,
  image: "https://s3.amazonaws.com/levelup-order-ahead-menus-production/f02c490e3ff532f9710eeb286d9e94c1a8aca303.jpg"
  )
meal.save

meal = Meal.new(
  description: "Spicy Deluxe Sandwich, Fries, Soft Drink",
  restaurant_id: 4,
  upvotes: 0,
  image: "https://d1fd34dzzl09j.cloudfront.net/Images/CFACOM/PDP/Menu%20Items%20Batch%201/Spicy-Deluxe-Sandwich/CFA_PDP_Spicy-Deluxe-Sandwich_1085.png"
  )
meal.save

meal = Meal.new(
  description: "Chick-fil-A Chicken Biscuit, Hashbrowns, Coffee",
  restaurant_id: 4,
  upvotes: 0,
  image: "https://www.cfacdn.com/img/order/COM/PDP_UPDATE/Images/Breakfast/Stack620_0000_CFA_1605_60_Biscuit_Chicken_PROD_2155_1240px.png"
  )
meal.save

meal = Meal.new(
  description: "Chick-fil-A Chicken Sandwich, Fries, Soft Drink",
  restaurant_id: 4,
  upvotes: 0,
  image: "https://www.cfacdn.com/img/order/COM/PDP_UPDATE/Images/Entrees/Edit%20NEW_Stack620_PDP_Chick-Fil-A-Sandwich_1085%20%281%29.png"
  )
meal.save

