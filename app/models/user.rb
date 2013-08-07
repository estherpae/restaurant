class User < ActiveRecord::Base
  has_many :reviews

  validates :name, :email, :uniqueness => true
  validates :name, :email, :presence => true

end
