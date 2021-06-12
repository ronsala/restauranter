class User < ApplicationRecord
  validates :first_name, :last_name, :email, :city, :state, presence: true
  validates :email, uniqueness: true
  has_secure_password
  has_many :restaurants
end
