class CreateUserMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :user_meals do |t|
      t.integer :ranking
      t.text :text
      t.integer :meal_id
      t.integer :user_id

      t.timestamps
    end
  end
end
