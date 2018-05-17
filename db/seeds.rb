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

#restaurant 5
restaurant = Restaurant.new(
  name: "Chipotle Mexican Grill", 
  address: "6 W Grand Ave, Chicago, IL 60611",
  logo:"https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Chipotle_Mexican_Grill_logo.svg/200px-Chipotle_Mexican_Grill_logo.svg.png",
  primary_image: "https://b.zmtcdn.com/data/pictures/9/16733319/c2bbf5a747d71164e23fa0f2ada172f3.jpg", 
  speed_of_service: 6
  )
restaurant.save

#restaurant 6
restaurant = Restaurant.new(
  name: "Taco Bell", 
  address: "100 W Randolph St, Chicago, IL 60601",
  logo:"https://upload.wikimedia.org/wikipedia/en/thumb/b/b3/Taco_Bell_2016.svg/150px-Taco_Bell_2016.svg.png",
  primary_image: "https://s3-media1.fl.yelpcdn.com/bphoto/cmpPzdcUiYwezfZnmHiT8w/o.jpg", 
  speed_of_service: 7
  )
restaurant.save

#restaurant 7
restaurant = Restaurant.new(
  name: "Al's Beef", 
  address: "169 W Ontario St, Chicago, IL 60654",
  logo:"https://peoplevine.blob.core.windows.net/files/521/business/6056/6056_logo.png",
  primary_image: "https://s3-media3.fl.yelpcdn.com/bphoto/1LBmPBBz1P3KbbRar-VHKw/o.jpg", 
  speed_of_service: 9
  )
restaurant.save

#restaurant 8
restaurant = Restaurant.new(
  name: "Shake Shack", 
  address: "66 E Ohio St, Chicago, IL 60611",
  logo:"https://upload.wikimedia.org/wikipedia/en/thumb/7/73/Shake_Shack_Logo.svg/566px-Shake_Shack_Logo.svg.png",
  primary_image: "https://cdn.shakeshack.com/wp-content/uploads/2014/10/shake-shack-chicago.jpg", 
  speed_of_service: 10
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

image = Image.new(
  name: "Chipotle 2", 
  url: "https://b.zmtcdn.com/data/pictures/chains/6/16733306/8d8ac7ce1dfc36bad0185efe2823f08f.jpg", 
  restaurant_id: 5
  )
image.save

image = Image.new(
  name: "Chipotle 3", 
  url: "https://b.zmtcdn.com/data/reviews_photos/a4e/a8a5e682e8c63fa1137eb0a28b83aa4e_1444338864.jpg", 
  restaurant_id: 5
  )
image.save

image = Image.new(
  name: "Chipotle 4", 
  url: "https://b.zmtcdn.com/data/reviews_photos/b3e/9a98a2920737ae8c40438b09327acb3e_1444338868.jpg", 
  restaurant_id: 5
  )
image.save

image = Image.new(
  name: "Taco Bell 2", 
  url: "https://s3-media3.fl.yelpcdn.com/bphoto/DER1JyL9nw6dKXm50ibDGA/o.jpg", 
  restaurant_id: 6
  )
image.save

image = Image.new(
  name: "Taco Bell 3", 
  url: "https://timedotcom.files.wordpress.com/2017/10/taco-bell-doritos-locos.jpg", 
  restaurant_id: 6
  )
image.save

image = Image.new(
  name: "Taco Bell 4", 
  url: "http://cdn2-www.mandatory.com/assets/mandatory/legacy/2016/08/man_file_1113111_6_ranking_taco_bell_menu_items.jpeg", 
  restaurant_id: 6
  )
image.save

image = Image.new(
  name: "Al's Beef 2", 
  url: "https://s3-media4.fl.yelpcdn.com/bphoto/GZ-9h0144v-mum-GU4ovIw/o.jpg", 
  restaurant_id: 7
  )
image.save

image = Image.new(
  name: "Al's Beef 3", 
  url: "https://s3-media2.fl.yelpcdn.com/bphoto/nqY6_amaS8GsuRamwuBVOQ/o.jpg", 
  restaurant_id: 7
  )
image.save

image = Image.new(
  name: "Al's Beef 4", 
  url: "https://s3-media1.fl.yelpcdn.com/bphoto/gRtLQvJN4fBZLmnXhIiCHw/o.jpg", 
  restaurant_id: 7
  )
image.save

image = Image.new(
  name: "Shake Shack 2", 
  url: "https://s3-media3.fl.yelpcdn.com/bphoto/ajUapo20klEHHNgU0MdZaw/o.jpg", 
  restaurant_id: 7
  )
image.save

image = Image.new(
  name: "Shake Shack 3", 
  url: "https://s3-media4.fl.yelpcdn.com/bphoto/2GwcFNabWg03O5cbUppMKw/o.jpg", 
  restaurant_id: 7
  )
image.save

image = Image.new(
  name: "Shake Shack 4", 
  url: "https://s3-media4.fl.yelpcdn.com/bphoto/HvliiFcUr0RKFcnL7Ngcbw/o.jpg", 
  restaurant_id: 7
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
  image: "https://www.chick-fil-a.com/-/media/Images/CFACOM/Menu-Items/WS-Menu-PDP-Images/Breakfast/CFA_PDP_Biscuit-Chicken_1085.ashx"
  )
meal.save

meal = Meal.new(
  description: "Chick-fil-A Chicken Sandwich, Fries, Soft Drink",
  restaurant_id: 4,
  upvotes: 0,
  image: "https://www.cfacdn.com/img/order/COM/PDP_UPDATE/Images/Entrees/Edit%20NEW_Stack620_PDP_Chick-Fil-A-Sandwich_1085%20%281%29.png"
  )
meal.save

meal = Meal.new(
  description: "Burrito Bowl, Soft Drink",
  restaurant_id: 5,
  upvotes: 0,
  image: "http://www.couponing101.com/wp-content/uploads/2016/10/6358737839538413184635822_Chipotle_Chicken_Salad_With_Vinaigrette_2x.jpg"
  )
meal.save

meal = Meal.new(
  description: "Burrito, Soft Drink",
  restaurant_id: 5,
  upvotes: 0,
  image: "https://cmt.azureedge.net/media/orig_chipotle-steak-burrito-20161121132850895294xx8ol.jpg"
  )
meal.save

meal = Meal.new(
  description: "Tacos, Soft Drink",
  restaurant_id: 5,
  upvotes: 0,
  image: "https://d5bzqyuki558t.cloudfront.net/cms-assets/system/asset_versions/attachments/000/000/308/original/_0002_CrispyCornTaco.png"
  )
meal.save

meal = Meal.new(
  description: "Crunchwrap Supreme, Soft Drink",
  restaurant_id: 6,
  upvotes: 0,
  image: "https://www.tacobell.com/images/22362_crunchwrap_supreme_269x269.jpg"
  )
meal.save

meal = Meal.new(
  description: "Crunchwrap Supreme, Soft Drink",
  restaurant_id: 6,
  upvotes: 0,
  image: "https://www.tacobell.com/images/22362_crunchwrap_supreme_269x269.jpg"
  )
meal.save

meal = Meal.new(
  description: "3 Doritos Locos Tacos, Soft Drink",
  restaurant_id: 6,
  upvotes: 0,
  image: "https://www.tacobell.com/images/22701_11._3_doritos_locos_tacos_supreme_combo_269x269.jpg"
  )
meal.save

meal = Meal.new(
  description: "Regular Beef, Fresh Cut Fries, Soft Drink",
  restaurant_id: 7,
  upvotes: 0,
  image: "https://s3-media3.fl.yelpcdn.com/bphoto/_YqIW2gIswMMV9o5Sqq5tw/o.jpg"
  )
meal.save

meal = Meal.new(
  description: "Original Polish, Fresh Cut Fries, Soft Drink",
  restaurant_id: 7,
  upvotes: 0,
  image: "https://s3-media2.fl.yelpcdn.com/bphoto/poI0mm0I5SdC9jA7RzZX6Q/o.jpg"
  )
meal.save

meal = Meal.new(
  description: "Original Dog, Fresh Cut Fries, Soft Drink",
  restaurant_id: 7,
  upvotes: 0,
  image: "https://s3-media4.fl.yelpcdn.com/bphoto/qASywWixUofrVPrA6PBdCw/o.jpg"
  )
meal.save

meal = Meal.new(
  description: "ShackBurger, Fries, Soft Drink",
  restaurant_id: 8,
  upvotes: 0,
  image: "https://fortunedotcom.files.wordpress.com/2016/09/514078498.jpg"
  )
meal.save
