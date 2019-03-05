# Ingredient.destroy_all
# RecipeIngredient.destroy_all
# Recipe.destroy_all
# User.destroy_all


puts "making seed data"
####################Start Users#######################
# 5 Users
robert = User.create(name: 'Robert')
eric = User.create(name: 'Eric')
bill_gates = User.create(name: 'Bill Gates')
tiger_woods = User.create(name: 'Tiger Woods')
elon_musk = User.create(name: 'Elon Musk')

####################End Users#######################



####################Start Ingredients#######################
# Roberts Ingredients
chicken = Ingredient.create(name: 'chicken', user_id: robert.id)
yogurt = Ingredient.create(name: 'yogurt', user_id: robert.id)
flour = Ingredient.create(name: 'flour', user_id: robert.id)
lettuce = Ingredient.create(name: 'lettuce', user_id: robert.id)

# Erics Ingredients
milk = Ingredient.create(name: 'milk', user_id: eric.id)
corn = Ingredient.create(name: 'corn', user_id: eric.id)
oatmeal = Ingredient.create(name: 'oatmeal', user_id: eric.id)
mushrooms = Ingredient.create(name: 'mushrooms', user_id: eric.id)

# Bill Gates ingredients
almonds = Ingredient.create(name: 'almonds', user_id: bill_gates.id)
honey = Ingredient.create(name: 'honey', user_id: bill_gates.id)
tomatoes = Ingredient.create(name: 'tomatoes', user_id: bill_gates.id)
peas = Ingredient.create(name: 'peas', user_id: bill_gates.id)

# Tiger Woods ingredients
soy_sauce = Ingredient.create(name: 'soy sauce', user_id: tiger_woods.id)
chocolate = Ingredient.create(name: 'chocolate', user_id: tiger_woods.id)
eggplants = Ingredient.create(name: 'eggplants', user_id: tiger_woods.id)
bananas = Ingredient.create(name: 'bananas', user_id: tiger_woods.id)

# Elon Musk Ingredients
eggs = Ingredient.create(name: 'eggs', user_id: elon_musk.id)
salmon = Ingredient.create(name: 'salmon', user_id: elon_musk.id)
blueberries = Ingredient.create(name: 'blueberries', user_id: elon_musk.id)
olives = Ingredient.create(name: 'olives', user_id: elon_musk.id)

####################End Ingredients#######################



####################Start Recipes#######################
# 5 Recipes
fried_chicken_salad = Recipe.create(name: 'Fried Chicken Salad', user_id: robert.id)

oatmeal_mash = Recipe.create(name: 'Oatmeal Mash', user_id: eric.id)

almond_crusted_tomatoes = Recipe.create(name: 'Almond crusted tomatoes', user_id: bill_gates.id)

chocolate_bananas = Recipe.create(name: 'Chocolate Bananas', user_id: tiger_woods.id)

eggs_benedict = Recipe.create(name: 'Eggs Benedict', user_id: elon_musk.id)

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
