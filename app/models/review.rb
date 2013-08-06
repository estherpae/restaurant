class Review < ActiveRecord::Base
  belongs_to :restaurant_place
  belongs_to :user
  belongs_to :item


  validates :contents, :uniqueness => true
  validates :contents, :user_id, :restaurant_place_id, :item_id, :presence => true
end
