# Ingredient.destroy_all
# RecipeIngredient.destroy_all
# Recipe.destroy_all
# User.destroy_all
# #

puts "making seed data"
####################Start Users#######################
# 5 Users
# robert = User.create(username: 'Robert', password_digest: "1234")
# eric = User.create(username: 'Eric', password_digest: "1234")
# bill_gates = User.create(username: 'Bill Gates', password_digest: "1234")
# tiger_woods = User.create(username: 'Tiger Woods', password_digest: "1234")
# elon_musk = User.create(username: 'Elon Musk', password_digest: "1234")

####################End Users#######################



####################Start Ingredients#######################
# Roberts Ingredients
chicken = Ingredient.create(name: 'chicken', user_id: 1)
yogurt = Ingredient.create(name: 'yogurt', user_id: 1)
flour = Ingredient.create(name: 'flour', user_id: 1)
lettuce = Ingredient.create(name: 'lettuce', user_id: 1)

# Erics Ingredients
milk = Ingredient.create(name: 'milk', user_id: 2)
corn = Ingredient.create(name: 'corn', user_id: 2)
oatmeal = Ingredient.create(name: 'oatmeal', user_id: 2)
mushrooms = Ingredient.create(name: 'mushrooms', user_id: 2)

# Bill Gates ingredients
almonds = Ingredient.create(name: 'almonds', user_id: 3)
honey = Ingredient.create(name: 'honey', user_id: 3)
tomatoes = Ingredient.create(name: 'tomatoes', user_id: 3)
peas = Ingredient.create(name: 'peas', user_id: 3)

# Tiger Woods ingredients
soy_sauce = Ingredient.create(name: 'soy sauce', user_id: 4)
chocolate = Ingredient.create(name: 'chocolate', user_id: 4)
eggplants = Ingredient.create(name: 'eggplants', user_id: 4)
bananas = Ingredient.create(name: 'bananas', user_id: 4)

# Elon Musk Ingredients
eggs = Ingredient.create(name: 'eggs', user_id: 5)
salmon = Ingredient.create(name: 'salmon', user_id: 5)
blueberries = Ingredient.create(name: 'blueberries', user_id: 5)
olives = Ingredient.create(name: 'olives', user_id: 5)

####################End Ingredients#######################



####################Start Recipes#######################
# 5 Recipes
fried_chicken_salad = Recipe.create(name: 'Fried Chicken Salad', user_id: 1)

oatmeal_mash = Recipe.create(name: 'Oatmeal Mash', user_id: 2)

almond_crusted_tomatoes = Recipe.create(name: 'Almond crusted tomatoes', user_id: 3)

chocolate_bananas = Recipe.create(name: 'Chocolate Bananas', user_id: 4)

eggs_benedict = Recipe.create(name: 'Eggs Benedict', user_id: 5)

####################End Recipes#######################


####################Start RecipeIngredient#################
# Fried chicken salad -- Robert
ri1 = RecipeIngredient.create(ingredient_id: chicken.id , recipe_id: fried_chicken_salad.id)
ri2 = RecipeIngredient.create(ingredient_id: flour.id , recipe_id: fried_chicken_salad.id)
ri3 = RecipeIngredient.create(ingredient_id: lettuce.id, recipe_id: fried_chicken_salad.id)

# Oatmeal Mash -- Eric
ri4 = RecipeIngredient.create(ingredient_id: milk.id , recipe_id: oatmeal_mash.id)
ri5 = RecipeIngredient.create(ingredient_id: oatmeal.id , recipe_id: oatmeal_mash.id)
ri6 = RecipeIngredient.create(ingredient_id: corn.id , recipe_id: oatmeal_mash.id)

# Almond Crusted Tomatoes --Bill Gates
ri7 = RecipeIngredient.create(ingredient_id: almonds.id , recipe_id: almond_crusted_tomatoes.id )
ri8 = RecipeIngredient.create(ingredient_id: honey.id , recipe_id: almond_crusted_tomatoes.id)
ri9 = RecipeIngredient.create(ingredient_id: tomatoes.id, recipe_id: almond_crusted_tomatoes.id)

# Chocolate Bananas -- Tiger Woods
ri10 = RecipeIngredient.create(ingredient_id: chocolate.id , recipe_id: chocolate_bananas.id )
ri11 = RecipeIngredient.create(ingredient_id: bananas.id , recipe_id: chocolate_bananas.id)

# Eggs Benedict-- Elon Musk
ri12 = RecipeIngredient.create(ingredient_id: eggs.id , recipe_id: eggs_benedict.id)
ri13 = RecipeIngredient.create(ingredient_id: salmon.id , recipe_id: eggs_benedict.id )

####################End RecipeIngredient###################

puts "seed data complete"
