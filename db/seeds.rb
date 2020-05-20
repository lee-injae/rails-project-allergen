# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
Allergy.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Ri.destroy_all


ocean = User.create(name:"Ocean")
warren = User.create(name:"Warren")
soozy = User.create(name:"Soozy")

scrambled = Recipe.create(name:"Scrambled Eggs", user_id:ocean.id)
sandwich = Recipe.create(name: "PBJ", user_id:warren.id)


egg = Ingredient.create(name:"Egg")
milk = Ingredient.create(name:"Milk")
salt = Ingredient.create(name:"Salt")
bread = Ingredient.create(name: "Bread")
peanut_butter = Ingredient.create(name: "Peanut Butter")
jelly = Ingredient.create(name: "Jelly")

Ri.create(recipe_id:scrambled.id, ingredient_id:egg.id)
Ri.create(recipe_id:scrambled.id, ingredient_id:milk.id)
Ri.create(recipe_id:scrambled.id, ingredient_id:salt.id)
Ri.create(recipe_id:sandwich.id, ingredient_id:bread.id)
Ri.create(recipe_id:sandwich.id, ingredient_id:peanut_butter.id)
Ri.create(recipe_id:sandwich.id, ingredient_id:jelly.id)
Ri.create(recipe_id:sandwich.id, ingredient_id:salt.id)



Allergy.create(user_id:ocean.id, ingredient_id:milk.id)
Allergy.create(user_id:warren.id, ingredient_id:bread.id)
Allergy.create(user_id:soozy.id, ingredient_id:salt.id)
Allergy.create(user_id:soozy.id, ingredient_id:bread.id)





