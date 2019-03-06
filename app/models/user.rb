class User < ApplicationRecord
  has_many :ingredients
  has_many :recipes
  validates :name, presence: true, uniqueness: true 
  has_secure_password
end
