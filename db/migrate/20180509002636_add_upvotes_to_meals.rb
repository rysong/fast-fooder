class AddUpvotesToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :upvotes, :integer
  end
end
