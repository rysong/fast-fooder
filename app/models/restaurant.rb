class Restaurant < ApplicationRecord
  has_many :images
  has_many :reviews 
end
