class Item < ActiveRecord::Base
  belongs_to :restaurant_place
  has_many :reviews
  validates :name, :uniqueness => true
  validates :name, :restaurant_place_id, :presence => true
  validates :name, :format => { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }

end
