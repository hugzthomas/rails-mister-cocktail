
require "json"
require "open-uri"

Ingredient.destroy_all
Cocktail.destroy_all

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredient_serialized = open(url).read
repos = JSON.parse(ingredient_serialized)
# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
repos["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


Cocktail.create!(name: "Sex on the beach")
Cocktail.create!(name: "Old fashioned")
Cocktail.create!(name: "Whiskey sour")
Cocktail.create!(name: "L'incontournable Mojito")
Cocktail.create!(name: "Bloody Mary")
Cocktail.create!(name: "Lost at sea")
Cocktail.create!(name: "Mai Tai")
Cocktail.create!(name: "Screw Driver")
Cocktail.create!(name: "Sorry not tonight")
Cocktail.create!(name: "What's my name")
Cocktail.create!(name: "where is mary")
Cocktail.create!(name: "coqtail")
