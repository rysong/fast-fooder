class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :logo
      t.string :primary_image

      t.timestamps
    end
  end
end
