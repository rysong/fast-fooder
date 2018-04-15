class Restaurant < ApplicationRecord
  has_many :reviews 
  has_many :images, through: :reviews 

  
end
