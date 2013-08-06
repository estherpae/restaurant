# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
u1 = User.create({:name => "Esther Pae", :email => "peony115@gmail.com"})
u2 = User.create({:name => "Alexis", :email => "dogcrazy5@gmail.com"})
u3 = User.create({:name => "Olivia Borglin", :email => "Oliveab@gmail.com"})
puts "There are now #{User.count}rows in the User Table. "

RestaurantPlace.destroy_all
rp1 = RestaurantPlace.create({:name => "Di Carlos", :address =>"8469 S Howell Ave, Oak Creek, WI 53154"})
rp2 =  RestaurantPlace.create({:name => "Midori Japanese Restaurant", :address =>"3310 W Bryn Mawr Ave,  Chicago, IL 60659"})
puts "There are now #{RestaurantPlace.count} rows in the Restaurant Table. "

Item.destroy_all
i1 = Item.create({:name => "Cheese Pizza", :restaurant_place_id => rp1.id})
i2 = Item.create({:name => "Roberto's Special Maki", :restaurant_place_id => rp2.id})
i3 = Item.create({:name => "Spicy Tuna Hand Roll", :restaurant_place_id => rp2.id})
i4 = Item.create({:name => "Spinach & Artichoke Rigatoni (Bobby O Special)", :restaurant_place_id => rp1.id})
puts "There are now #{Item.count} rows in the Item Table. "

Review.destroy_all
r1 = Review.create({:contents => "The Cheese Pizza is the best pizza I have ever had.  I was expecting something pretty ordinary, but this pizza blew my mind!", :user_id => u3.id, :item_id =>i1.id, :restaurant_place_id => rp1.id })
r2 = Review.create({:contents => "Roberto is truly an amazing chef. The sauce on this maki roll was mind blowing! This should defenetly win an award", :user_id => u1.id, :item_id =>i2.id, :restaurant_place_id => rp2.id })
r3 = Review.create({:contents => "The spicay tuna roll was perfection! I loved everything about it! I loved it so much, I ordered 2 more.", :user_id => u2.id, :item_id =>i3.id, :restaurant_place_id => rp2.id })
r4 = Review.create({:contents => "This pasta is outstanding. The sauce and the spinach and artichoke worked fabulous together.  This is the best italian place ever", :user_id => u1.id, :item_id =>i4.id, :restaurant_place_id => rp1.id })
puts "There are now #{Review.count} rows in the Review Table. "

