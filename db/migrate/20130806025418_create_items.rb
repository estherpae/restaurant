class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :restaurant_place_id

      t.timestamps
    end
  end
end