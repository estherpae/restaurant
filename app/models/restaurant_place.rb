class RestaurantPlace < ActiveRecord::Base
  has_many :reviews

  validates :name, :address, :uniqueness => true
  validates :name, :address, :presence => true
end
