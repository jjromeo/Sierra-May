# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Category.destroy_all


shoes = Category.create(name: "Shoes")
underwear = Category.create(name: "Underwear")
accessories = Category.create(name: "Accessories")

mockersons = shoes.products.create(name: "Mockersons", description: "Classic great shoe")
heels = shoes.products.create(name: "High heels", description: "Painful but worth it!")

mockersons.variations.create(price: "40", size: "8", colour: "brown")  
mockersons.variations.create(price: "40", size: "9", colour: "brown")  
mockersons.variations.create(price: "40", size: "10", colour: "brown")  
