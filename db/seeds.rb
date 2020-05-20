# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
Allergen.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Ri.destroy_all


ocean = User.create(name:"Ocean")
warren = User.create(name:"Warren")
soozy = User.create(name:"Soozy")

scrambled = Recipe.create(name:"Scrambled Eggs", user_id:ocean.id)


egg = Ingredient.create(name:"Egg")
milk = Ingredient.create(name:"Milk")
salt = Ingredient.create(name:"Salt")

Ri.create(recipe_id:scrambled.id, ingredient_id:egg.id)
Ri.create(recipe_id:scrambled.id, ingredient_id:milk.id)
Ri.create(recipe_id:scrambled.id, ingredient_id:salt.id)

Allergen.create(user_id:ocean.id, ingredient_id:milk.id)



