class RemoveRankingFromUserMeals < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_meals, :ranking, :integer
  end
end
