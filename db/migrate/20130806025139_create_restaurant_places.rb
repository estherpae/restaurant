class CreateRestaurantPlaces < ActiveRecord::Migration
  def change
    create_table :restaurant_places do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
