class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation

  validates :name, :password, :presence => true
end
