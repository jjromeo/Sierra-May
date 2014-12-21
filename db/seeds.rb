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

shoes.products.create(name: "Mockersons", description: "Classic great shoe")
shoes.products.create(name: "High heels", description: "Painful but worth it!")
