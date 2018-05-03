class Restaurant < ApplicationRecord
  has_many :reviews 
  has_many :images, through: :reviews 
  has_many :meals

  def as_json
    {
      id: id,
      name: name,
      address: address,
      logo: logo, 
      primary_image: primary_image,
      reviews: reviews.as_json,
      meals: meals.as_json
    }
  end   
end
