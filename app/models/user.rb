class User < ApplicationRecord
  has_many :ingredients
  has_many :recipes
  has_secure_password
end
