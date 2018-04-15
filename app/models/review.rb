class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant 
  has_many :images
end
