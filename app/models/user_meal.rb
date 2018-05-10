class UserMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :user

  def as_json
    {
      id: id,
      text: text,
      user: user
    }
  end  
end


