class RemoveReviewIdFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :review_id, :integer
  end
end
