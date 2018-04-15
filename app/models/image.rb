class Image < ApplicationRecord
  belongs_to :user 
  belongs_to :review
  
end
