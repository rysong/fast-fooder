class AddRestaurantIdToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :restaurant_id, :integer
  end
end
