class User < ApplicationRecord
  has_many :ingredients
  has_many :recipes

  has_many :favorites
  has_many :recipes, through: :favorites 



  validates :username, presence: true, uniqueness: true
  has_secure_password
end
