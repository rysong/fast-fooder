class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant 

  def as_json
    {
      id: id,
      value: value,
      text: text,
      author_name: user.name, 
      restaurant_id: restaurant_id,
      relative_time_description: "1 day ago", 
      profile_photo_url: "https://thumbs.dreamstime.com/b/happy-man-eating-hamburger-sandwich-icon-fast-food-flat-design-vector-illustration-58969858.jpg"
    }
  end
end
