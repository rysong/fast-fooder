class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
