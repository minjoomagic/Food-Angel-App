# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all

us1 = User.create(name: "Eric")
us2 = User.create(name: "Robert")
us3 = User.create(name: "Matt")
us4 = User.create(name: "Josh")

in1 = Ingredient.create(name: "Milk", user_id: us1.id)
in2 = Ingredient.create(name: "Eggs", user_id: us1.id)
in3 = Ingredient.create(name: "Butter", user_id: us2.id)
in4 = Ingredient.create(name: "Chicken", user_id: us2.id)
in5 = Ingredient.create(name: "Pork", user_id: us3.id)
in6 = Ingredient.create(name: "Lettuce", user_id: us3.id)
in7 = Ingredient.create(name: "Coffee", user_id: us4.id)
in8 = Ingredient.create(name: "Sugar", user_id: us4.id)

rp1 = Recipe.create(name: "Milk and Eggs", user_id: us1.id)
rp2 = Recipe.create(name: "Butter Chicken", user_id: us2.id)
rp3 = Recipe.create(name: "Pork Salad", user_id: us3.id)
rp4 = Recipe.create(name: "Literally coffee", user_id: us4.id)

ri1 = RecipeIngredient.create(ingredient_id: in1.id, recipe_id: rp1.id)
ri2 = RecipeIngredient.create(ingredient_id: in2.id, recipe_id: rp1.id)
ri3 = RecipeIngredient.create(ingredient_id: in3.id, recipe_id: rp2.id)
ri4 = RecipeIngredient.create(ingredient_id: in4.id, recipe_id: rp2.id)
ri5 = RecipeIngredient.create(ingredient_id: in5.id, recipe_id: rp3.id)
ri6 = RecipeIngredient.create(ingredient_id: in6.id, recipe_id: rp3.id)
ri7 = RecipeIngredient.create(ingredient_id: in7.id, recipe_id: rp4.id)
ri8 = RecipeIngredient.create(ingredient_id: in8.id, recipe_id: rp4.id)
