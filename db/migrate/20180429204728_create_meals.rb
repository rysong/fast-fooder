class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :description
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
