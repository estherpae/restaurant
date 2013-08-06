class User < ActiveRecord::Base


  validates :name, :email, :uniqueness => true
  validates :name, :email, :presence => true
  validates :name, :format => { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
