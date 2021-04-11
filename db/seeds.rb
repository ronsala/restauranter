# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Menu.destroy_all
Section.destroy_all
Item.destroy_all

menu = Menu.create

['Starters & Sides', 'Entrees', 'Beverages', 'Desserts'].each do |s|
  Section.create(name: s, menu_id: menu.id)
end