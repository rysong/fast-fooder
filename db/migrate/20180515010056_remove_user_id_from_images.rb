class RemoveUserIdFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :user_id, :integer
  end
end
