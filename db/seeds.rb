require 'open-uri'
require 'json'

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

# ingredients_serialized = open(url).read

# ingredients = JSON.parse(ingredients_serialized)

# ingredients.each do |ingredient|
#   Ingredient.create(name: ingredient["strIngredient1"])
# end

puts "Destroy ingredients"
Ingredient.destroy_all if Rails.env.development?
puts "Destroy Cocktails"
Cocktail.destroy_all if Rails.env.development?
puts "Create ingredients"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredients["drinks"].each do |ingredient|
  i = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{i.name}"
end
