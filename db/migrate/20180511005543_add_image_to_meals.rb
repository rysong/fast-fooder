class AddImageToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :image, :string
  end
end
