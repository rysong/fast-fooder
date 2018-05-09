class AddSpeedOfServiceToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :speed_of_service, :integer
  end
end
