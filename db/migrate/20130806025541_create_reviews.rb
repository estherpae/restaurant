class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :contents
      t.integer :user_id
      t.integer :item_id
      t.integer :restaurant_place_id

      t.timestamps
    end
  end
end
