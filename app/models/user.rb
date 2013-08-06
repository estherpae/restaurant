class User < ActiveRecord::Base
  has_many :reviews

  validates :name, :email, :uniqueness => true
  validates :name, :email, :presence => true
  validates :name, :format => { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
