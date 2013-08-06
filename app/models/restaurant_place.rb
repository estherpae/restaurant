class RestaurantPlace < ActiveRecord::Base


  validates :name, :address, :uniqueness => true
  validates :name, :address, :presence => true
  validates :name, :format => { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
