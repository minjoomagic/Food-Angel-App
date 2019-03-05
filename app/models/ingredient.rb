class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  belongs_to :user

  validates :name, presence: true, :uniqueness => {:scope => :user_id}

end
